## spice import of a synthetized RTL design into XSCHEM

copy `decred_controller.spice` and `decred_hash_macro.spice` to `test1.spice` and `test2.spice`
- in test?.spice:
- comment out FILLER and ANTENNA cells (delete these lines)
- delete  VGND VGND VPWR VPWR power pins from stdcell instances
  from:
    `X_1468_ _1428_/Y VGND VGND VPWR VPWR _1548_/D sky130_fd_sc_hd__buf_2`
  to:
    `X_1468_ _1428_/Y _1548_/D sky130_fd_sc_hd__buf_2`
- `./make_sch_from_spice.awk user_project_wrapper.spice > log`
- `./make_sch_from_spice.awk test1.spice >log`
- `./make_sch_from_spice.awk test2.spice >log`
- manually fix port directions using info from verilog files
- rename top level nets to more sane names

## Opening the schematic
from this directory: 

  `xschem user_project_wrapper.sch`

