 
****************************************
Report : resources
Design : P_MUL
Version: T-2022.03
Date   : Thu May 11 15:33:18 2023
****************************************


Resource Report for this hierarchy in file
        /RAID2/COURSE/dcs/dcs064/Lab09/01_RTL/P_MUL.sv
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| add_x_5        | DW01_add       | width=48   | add_51 (P_MUL.sv:51)       |
| add_x_6        | DW01_add       | width=48   | add_52 (P_MUL.sv:52)       |
| mult_x_7       | DW_mult_uns    | a_width=16 | mult_54 (P_MUL.sv:54)      |
|                |                | b_width=16 |                            |
| mult_x_8       | DW_mult_uns    | a_width=16 | mult_55 (P_MUL.sv:55)      |
|                |                | b_width=16 |                            |
| mult_x_9       | DW_mult_uns    | a_width=16 | mult_56 (P_MUL.sv:56)      |
|                |                | b_width=16 |                            |
| mult_x_10      | DW_mult_uns    | a_width=16 | mult_57 (P_MUL.sv:57)      |
|                |                | b_width=16 |                            |
| mult_x_11      | DW_mult_uns    | a_width=16 | mult_58 (P_MUL.sv:58)      |
|                |                | b_width=16 |                            |
| mult_x_12      | DW_mult_uns    | a_width=16 | mult_59 (P_MUL.sv:59)      |
|                |                | b_width=16 |                            |
| mult_x_13      | DW_mult_uns    | a_width=16 | mult_60 (P_MUL.sv:60)      |
|                |                | b_width=16 |                            |
| mult_x_14      | DW_mult_uns    | a_width=16 | mult_61 (P_MUL.sv:61)      |
|                |                | b_width=16 |                            |
| mult_x_15      | DW_mult_uns    | a_width=16 | mult_62 (P_MUL.sv:62)      |
|                |                | b_width=16 |                            |
| DP_OP_45J1_122_5212             |            |                            |
|                | DP_OP_45J1_122_5212 |       |                            |
=============================================================================

Datapath Report for DP_OP_45J1_122_5212
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_45J1_122_5212  | add_74 (P_MUL.sv:74) add_74_2 (P_MUL.sv:74)         |
|                      | add_74_3 (P_MUL.sv:74) add_74_4 (P_MUL.sv:74)       |
|                      | add_74_5 (P_MUL.sv:74) add_74_6 (P_MUL.sv:74)       |
|                      | add_74_7 (P_MUL.sv:74) add_74_8 (P_MUL.sv:74)       |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 32    |                                          |
| I2    | PI   | Unsigned | 48    |                                          |
| I3    | PI   | Unsigned | 48    |                                          |
| I4    | PI   | Unsigned | 64    |                                          |
| I5    | PI   | Unsigned | 64    |                                          |
| I6    | PI   | Unsigned | 64    |                                          |
| I7    | PI   | Unsigned | 80    |                                          |
| I8    | PI   | Unsigned | 80    |                                          |
| I9    | PI   | Unsigned | 96    |                                          |
| O1    | PO   | Unsigned | 96    | I1 + I2 + I3 + I4 + I5 + I6 + I7 + I8 + I9 (P_MUL.sv:74) |
==============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| add_x_5            | DW01_add         | pparch (area,speed)                 |
| add_x_6            | DW01_add         | pparch (area,speed)                 |
| mult_x_7           | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_8           | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_9           | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_10          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_11          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_12          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_13          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_14          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_15          | DW_mult_uns      | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_45J1_122_5212                   |                    |                |
|                    | DP_OP_45J1_122_5212 | str (area,speed)                 |
===============================================================================

1
