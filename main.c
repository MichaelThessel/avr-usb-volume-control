#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <avr/pgmspace.h>

#include "usbdrv/usbdrv.h"

#define STATUS_IDLE 0
#define STATUS_UP 1
#define STATUS_DOWN 2
#define STATUS_MUTE 3
#define STATUS_STOP 4
volatile int status = 0;

static uint8_t reportBuffer[3];
static uchar idleRate;

#define REPID_MMKEY 3

volatile int debounceDelay = 0;

const PROGMEM char usbHidReportDescriptor[USB_CFG_HID_REPORT_DESCRIPTOR_LENGTH] = {
    0x05, 0x0C, // USAGE_PAGE (Consumer Devices)
    0x09, 0x01, // USAGE (Consumer Control)
    0xA1, 0x01, // COLLECTION (Application)
    0x85, REPID_MMKEY, // REPORT_ID
    0x19, 0x00, // USAGE_MINIMUM (Unassigned)
    0x2A, 0x3C, 0x02, // USAGE_MAXIMUM
    0x15, 0x00, // LOGICAL_MINIMUM (0)
    0x26, 0x3C, 0x02, // LOGICAL_MAXIMUM
    0x95, 0x01, // REPORT_COUNT (1)
    0x75, 0x10, // REPORT_SIZE (16)
    0x81, 0x00, // INPUT (Data,Ary,Abs)
    0xC0 // END_COLLECTION
}; // Length 25

void buildReport(uint8_t keyCode, uint8_t reportId)
{
    reportBuffer[0] = reportId;
    reportBuffer[1] = keyCode;
    reportBuffer[2] = 0;
}

usbMsgLen_t usbFunctionSetup(uchar data[8])
{
    usbRequest_t *rq = (void *)data;

    if ((rq->bmRequestType & USBRQ_TYPE_MASK) == USBRQ_TYPE_CLASS) {
        if (rq->bRequest == USBRQ_HID_GET_REPORT) {
            usbMsgPtr = (void *)&reportBuffer;
            buildReport(0, 0);
            return sizeof(reportBuffer);
        } else if (rq->bRequest == USBRQ_HID_GET_IDLE) {
            usbMsgPtr = &idleRate;
            return 1;
        } else if (rq->bRequest == USBRQ_HID_SET_IDLE) {
            idleRate = rq->wValue.bytes[1];
        }
    }

    return 0;
}

int main(void)
{
    DDRC |= (1 << DDC3) | (1 << DDC5);
    PORTC &= !((1 << PORTC3) | (1 << PORTC5));

    DDRD &= ~(1 << DDD0) | ~(1 << DDD1); // PD0 & PD1 input
    PCICR |= (1 << PCIE2); // Enable pin change interrupts for PCINT[23:16]
    PCMSK2 |= (1 << PCINT16); // Enable pin change interrupt for PCINT16
    EICRA |= (1 << ISC11); // Trigger pin change interrupt on falling edge

    wdt_enable(WDTO_1S);

    usbInit();
    usbDeviceDisconnect();

    uint8_t i = 0;
    while(--i) {
        wdt_reset();
        _delay_ms(1);
    }

    usbDeviceConnect();

    sei();

    while(1) {
        wdt_reset();
        usbPoll();

        // Process key presses
        if (status != STATUS_IDLE && usbInterruptIsReady()) {

            switch (status) {
                case STATUS_UP:
                    buildReport(0xE9, REPID_MMKEY);
                    status = STATUS_STOP;
                    break;

                case STATUS_DOWN:
                    buildReport(0xEA, REPID_MMKEY);
                    status = STATUS_STOP;
                    break;

                case STATUS_MUTE:
                    buildReport(0xE2, REPID_MMKEY);
                    status = STATUS_STOP;
                    break;

                case STATUS_STOP:
                    buildReport(0, 0);
                    status = STATUS_IDLE;
                    break;
            }

            usbSetInterrupt((void *)&reportBuffer, sizeof(reportBuffer));
        }

        // Button debounce
        if (debounceDelay) {
            debounceDelay--;
        }
    }

    return 0;
}

ISR(PCINT2_vect)
{
    if (debounceDelay) return;

    if (!(PIND & (1 << PIND0))) {
        if (PIND & (1 << PIND1)) {
            status = STATUS_UP;
        } else {
            status = STATUS_DOWN;
        }
        debounceDelay = 1000;
    }
}
