 
****************************************
Report : resources
Design : Fpc
Version: T-2022.03
Date   : Thu Jun  1 20:46:07 2023
****************************************


Resource Report for this hierarchy in file
        /RAID2/COURSE/dcs/dcs064/Lab08/01_RTL/Fpc.sv
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| lt_x_5         | DW_cmp         | width=8    | lt_90 (Fpc.sv:90)          |
| sub_x_6        | DW01_sub       | width=8    | sub_91 (Fpc.sv:91)         |
| ashr_7         | DW_rightsh     | A_width=8  | srl_91 (Fpc.sv:91)         |
|                |                | SH_width=8 |                            |
| sub_x_8        | DW01_sub       | width=8    | sub_96 (Fpc.sv:96)         |
| ashr_9         | DW_rightsh     | A_width=8  | srl_96 (Fpc.sv:96)         |
|                |                | SH_width=8 |                            |
| add_x_10       | DW01_add       | width=8    | add_120 (Fpc.sv:120)       |
| DP_OP_60J1_122_9600             |            |                            |
|                | DP_OP_60J1_122_9600 |       |                            |
| DP_OP_61J1_123_6112             |            |                            |
|                | DP_OP_61J1_123_6112 |       |                            |
| sub_x_24       | DW01_sub       | width=8    | add_99_S2_ni (Fpc.sv:99)   |
|                |                |            | sub_add_99_S2 (Fpc.sv:99)  |
| sub_x_25       | DW01_sub       | width=8    | add_101_S2_ni (Fpc.sv:101) |
|                |                |            | sub_add_101_S2 (Fpc.sv:101) |
=============================================================================

Datapath Report for DP_OP_60J1_122_9600
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_60J1_122_9600  | add_103 (Fpc.sv:103) sub_add_106_S2 (Fpc.sv:106)    |
|                      | add_106_S2_ni (Fpc.sv:106)                          |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 9     |                                          |
| I2    | PI   | Signed   | 9     |                                          |
| T59   | IFO  | Signed   | 9     | O1[8:0]                                  |
| O1    | PO   | Signed   | 10    | I1 + I2 (Fpc.sv:103)                     |
| O2    | PO   | Signed   | 9     | -T59 + $unsigned(9'b000000000) (Fpc.sv:106) |
==============================================================================

Datapath Report for DP_OP_61J1_123_6112
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_61J1_123_6112  | mult_126 (Fpc.sv:126) add_130 (Fpc.sv:130)          |
|                      | add_130_2 (Fpc.sv:130) sub_130 (Fpc.sv:130)         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 8     |                                          |
| I2    | PI   | Unsigned | 8     |                                          |
| I3    | PI   | Signed   | 8     |                                          |
| I4    | PI   | Signed   | 8     |                                          |
| T47   | IFO  | Unsigned | 1     | O1[15]                                   |
| O1    | PO   | Unsigned | 16    | I1 * I2 (Fpc.sv:126)                     |
| O2    | PO   | Signed   | 8     | T47 + I3 + I4 - $unsigned(7'b1111111) (Fpc.sv:130) |
==============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| lt_x_5             | DW_cmp           | apparch (area)     |                |
| sub_x_6            | DW01_sub         | apparch (area)     |                |
| ashr_7             | DW_rightsh       | astr (area)        |                |
| sub_x_8            | DW01_sub         | apparch (area)     |                |
| ashr_9             | DW_rightsh       | astr (area)        |                |
| add_x_10           | DW01_add         | apparch (area)     |                |
| sub_x_24           | DW01_sub         | apparch (area)     |                |
| sub_x_25           | DW01_sub         | apparch (area)     |                |
| DP_OP_60J1_122_9600                   |                    |                |
|                    | DP_OP_60J1_122_9600 | str (area)      |                |
| DP_OP_61J1_123_6112                   |                    |                |
|                    | DP_OP_61J1_123_6112 | str (area)      |                |
|                    |                  | mult_arch: and     |                |
===============================================================================

1
