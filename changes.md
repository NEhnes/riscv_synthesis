## LED OUTPUT
- added 8 led output array to top module port declaration
- declared 8 wide bus to act as register for leds
- declared memory address to reference
- added sequential logic to update led register
  - only activates if writing to the exact memory address
  - takes lowest 8 bits of the dmem write data
- drive output from the latches combinationally

## UPDATE TOP MODULES
- renamed "top" to "riscv_top"
- added true top-level wrapper called "fpga_top"
- true top-level contains:
  - ports
  - clk divider
  - button to reset mapping
  - riscv top instantiation





// not finished:

use clk wizard to get like 5 MHz
add clock divider to get even lower clock (like 10Hz or some shit)

add constraints

write the program itself (should be simple but hard)
change where the program loads from

make sure LEDs address is outside the program's scope.