Hardware Description-
MicroBlaze Processor Core,
32-bit RISC soft-core processor,
Configured with:5-stage pipeline,
Instruction Local Memory Bus (ILMB) for instruction & DLMB for data,
AXI4 interconnect for peripherals,
UART, SPI, I²C, and GPIO interfaces.

GPIO-0 Interface
Connected to 4 onboard LEDs and 4 slide switches,
Channel 1 → LEDs (output)
Channel 2 → Switches (input)
Used to test bidirectional data and verify peripheral mapping.

GPIO-1 Interface
Connected to 4 onboard LEDs and 4 slide switches,
Channel 1 → RGB (output)
Channel 2 → Pushbutton (input)
Used to test bidirectional data and verify peripheral mapping.

UART Interface
Used for serial communication with a PC terminal (via USB-UART bridge),
Supports TX/RX at standard baud rates (115200),
Enables printf-style debugging and command interaction.

I²C Interface
Connected to an EEPROM for data storage and testing,
Configured as a master device controlled by MicroBlaze,
Demonstrates byte-level read/write operations between FPGA and EEPROM.

SPI Interface
Used for future connection with external ADC, DAC, or Flash memory,
Supports full-duplex serial communication with programmable clock speed.


























[project_MB_spec](Custom Microblaze/project_MB_spec/Microblaze_spec.pdf)
