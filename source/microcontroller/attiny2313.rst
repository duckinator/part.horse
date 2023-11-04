ATtiny2313
==========

The ATtiny2313/ATtiny2313A is an 8-bit AVR microcontroller, with 2KB of program memory.

Both are available in 11-pin DIP/SOIC (through-hole) and 11-pin MLF/VQFN (surface-mount) variants.

More details, and datasheets, can be found on Microchip's `ATtiny2313A product page`_.

A variant with 4KB of program memory is available as the ATtiny4313; details and datasheets for which can be found on Microchip's `ATtiny4313 product page`_.

.. _ATtiny2313A product page: https://www.microchip.com/en-us/product/attiny2313a
.. _ATtiny4313 product page: https://www.microchip.com/en-us/product/attiny4313

..
    {
      "name":           "ATtiny2313",
      "datasheet":      "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-2543-AVR-ATtiny2313_Datasheet.pdf",
      "details":        "https://www.microchip.com/wwwproducts/en/ATtiny2313",
      "summary":        "8-bit AVR microcontroller with 2KB of program memory.",
      "style":          "DIP",
      "number_of_pins": 20,
      "tags": ["avr", "microcontroller", "8-bit"],
      "pins": [
        [["1",  "PA2"], ["20", "Vcc"]],
        [["2",  "PD0"], ["19", "PB7"]],
        [["3",  "PD1"], ["18", "PB6"]],
        [["4",  "PA1"], ["17", "PB5"]],
        [["5",  "PA0"], ["16", "PB4"]],
        [["6",  "PD2"], ["15", "PB3"]],
        [["7",  "PD3"], ["14", "PB2"]],
        [["8",  "PD4"], ["13", "PB1"]],
        [["9",  "PD5"], ["12", "PB0"]],
        [["10", "GND"], ["11", "PD6"]]
      ],
      "left_pin_functions": [
        ["1",   "PA2",  "~RESET/dW"],
        ["2",   "PD0",  "RXD"],
        ["3",   "PD1",  "TXD"],
        ["4",   "PA1",  "XTAL2"],
        ["5",   "PA0",  "XTAL1"],
        ["6",   "PD2",  "CKOUT/XCK/INT0"],
        ["7",   "PD3",  "INT1"],
        ["8",   "PD4",  "T0"],
        ["9",   "PD5",  "OC0B/T1"],
        ["10",  "GND",  "Ground."]
      ],
      "right_pin_functions": [
        ["20",  "Vcc",  "Positive supply voltage."],
        ["19",  "PB7",  "UCSK/SCL/PCINT7"],
        ["18",  "PB6",  "MISO/DO/PCINT6"],
        ["17",  "PB5",  "MOSI/DI/SDA/PCINT5"],
        ["16",  "PB4",  "OC1B/PCINT4"],
        ["15",  "PB3",  "OC1A/PCINT3"],
        ["14",  "PB2",  "OC0A/PCINT2"],
        ["13",  "PB1",  "AIN1/PCINT1"],
        ["12",  "PB0",  "AIN0/PCINT0"],
        ["11",  "PD6",  "ICP"]
      ]
    }
