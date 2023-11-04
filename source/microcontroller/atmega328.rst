ATmega328
=========

The ATmega328 is an 8-bit AVR microcontroller, with 32KB of program memory.
It's available in a 28-pin DIP (through-hole) form factor.

**Microchip (the manufacturer) does not recommend it for new designs.**

More details, and a datasheet, can be downloaded from Microchip's `product page`_.

.. _product page: https://www.microchip.com/en-us/product/ATmega328

..
    {
      "name":           "ATmega328",
      "datasheet":      "https://ww1.microchip.com/downloads/en/DeviceDoc/ATmega48A-PA-88A-PA-168A-PA-328-P-DS-DS40002061A.pdf",
      "details":        "
      "summary":        "8-bit AVR microcontroller with 32KB of program memory.",
      "style":          "DIP",
      "number_of_pins": 28,
      "tags": ["avr", "microcontroller", "8-bit"],
      "pins": [
        [["1 ", "PC6"],     ["28", "PC5"]],
        [["2 ", "PD0"],     ["27", "PC4"]],
        [["3 ", "PD1"],     ["26", "PC3"]],
        [["4 ", "PD2"],     ["25", "PC2"]],
        [["5 ", "PD3"],     ["24", "PC1"]],
        [["6 ", "PD4"],     ["23", "PC0"]],
        [["7 ", "VCC"],     ["22", "GND"]],
        [["8 ", "GND"],     ["21", "AREF"]],
        [["9 ", "PB6"],     ["20", "AVCC"]],
        [["10", "PB7"],     ["19", "PB5"]],
        [["11", "PD5"],     ["18", "PB4"]],
        [["12", "PD6"],     ["17", "PB3"]],
        [["13", "PD7"],     ["16", "PB2"]],
        [["14", "PB0"],     ["15", "PB1"]]
      ],
      "left_pin_functions": [
        ["1",  "PC6", "PCINT14, RESET"],
        ["2",  "PD0", "PCINT16, RXD"],
        ["3",  "PD1", "PCINT17, TXD"],
        ["4",  "PD2", "PCINT18, INT0"],
        ["5",  "PD3", "PCINT19, INT1, OC2B"],
        ["6",  "PD4", "PCINT20, XCK,  T0"],
        ["7",  "VCC", "Positive supply voltage"],
        ["8",  "GND", "Ground"],
        ["9",  "PB6", "PCINT6,  XTAL1, TOSC1"],
        ["10", "PB7", "PCINT7,  XTAL2, TOSC2"],
        ["11", "PD5", "PCINT21, OC0B,  T1"],
        ["12", "PD6", "PCINT22, OC0A,  AIN0"],
        ["13", "PD7", "PCINT23, AIN1"],
        ["14", "PB0", "PCINT0,  CLKO,  ICP1"]
      ],
      "right_pin_functions": [
        ["28", "PC5",  "ADC5, PCINT13, SCL"],
        ["27", "PC4",  "ADC4, PCINT12, SDA"],
        ["26", "PC3",  "ADC3, PCINT11"],
        ["25", "PC2",  "ADC2, PCINT10"],
        ["24", "PC1",  "ADC1, PCINT9"],
        ["23", "PC0",  "ADC0, PCINT8"],
        ["22", "GND",  "Ground"],
        ["21", "AREF", "AREF"],
        ["20", "AVCC", "AVCC"],
        ["19", "PB5",  "SCK,  PCINT5"],
        ["18", "PB4",  "MISO, PCINT4"],
        ["17", "PB3",  "MOSI, PCINT3, OC2A"],
        ["16", "PB2",  "SS,   PCINT2, OC1B"],
        ["15", "PB1",  "OC1A, PCINT1"]
      ]
    }
