 
****************************************
Report : resources
Design : DCT
Version: T-2022.03
Date   : Thu Apr 27 18:37:27 2023
****************************************


Resource Report for this hierarchy in file
        /RAID2/COURSE/dcs/dcs064/Lab07/01_RTL/DCT.sv
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| mult_x_2       | DW_mult_tc     | a_width=10 | mult_113 (DCT.sv:113)      |
|                |                | b_width=8  |                            |
| mult_x_3       | DW_mult_tc     | a_width=10 | mult_114 (DCT.sv:114)      |
|                |                | b_width=8  |                            |
| mult_x_4       | DW_mult_tc     | a_width=10 | mult_115 (DCT.sv:115)      |
|                |                | b_width=8  |                            |
| mult_x_5       | DW_mult_tc     | a_width=10 | mult_116 (DCT.sv:116)      |
|                |                | b_width=8  |                            |
| add_x_11       | DW01_inc       | width=4    | add_137 (DCT.sv:137)       |
| add_x_14       | DW01_inc       | width=4    | add_166 (DCT.sv:166)       |
| add_x_16       | DW01_inc       | width=4    | add_183 (DCT.sv:183)       |
| DP_OP_61J1_122_5020             |            |                            |
|                | DP_OP_61J1_122_5020 |       |                            |
| DP_OP_62J1_123_4750             |            |                            |
|                | DP_OP_62J1_123_4750 |       |                            |
=============================================================================

Datapath Report for DP_OP_61J1_122_5020
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_61J1_122_5020  | mult_101 (DCT.sv:101) add_105 (DCT.sv:105)          |
|                      | add_105_2 (DCT.sv:105) add_105_3 (DCT.sv:105)       |
|                      | mult_102 (DCT.sv:102) mult_103 (DCT.sv:103)         |
|                      | mult_104 (DCT.sv:104) add_div_105 (DCT.sv:105)      |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 7     |                                          |
| I2    | PI   | Signed   | 8     |                                          |
| I3    | PI   | Signed   | 8     |                                          |
| I4    | PI   | Signed   | 8     |                                          |
| I5    | PI   | Signed   | 8     |                                          |
| I6    | PI   | Signed   | 8     |                                          |
| I7    | PI   | Signed   | 8     |                                          |
| I8    | PI   | Signed   | 8     |                                          |
| I9    | PI   | Unsigned | 1     |                                          |
| T1    | IFO  | Signed   | 16    | I1 * I2 (DCT.sv:101)                     |
| T2    | IFO  | Signed   | 16    | I3 * I4 (DCT.sv:102)                     |
| T3    | IFO  | Signed   | 16    | I5 * I6 (DCT.sv:103)                     |
| T4    | IFO  | Signed   | 16    | I7 * I8 (DCT.sv:104)                     |
| T42   | IFO  | Signed   | 10    | O1[16:7]                                 |
| O1    | PO   | Signed   | 19    | T1 + T2 + T3 + T4 (DCT.sv:105)           |
| O2    | PO   | Unsigned | 10    | I9 + T42 (DCT.sv:105)                    |
==============================================================================

Datapath Report for DP_OP_62J1_123_4750
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_62J1_123_4750  | add_117 (DCT.sv:117) add_117_2 (DCT.sv:117)         |
|                      | add_117_3 (DCT.sv:117) add_div_117 (DCT.sv:117)     |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 16    |                                          |
| I2    | PI   | Signed   | 16    |                                          |
| I3    | PI   | Signed   | 16    |                                          |
| I4    | PI   | Signed   | 16    |                                          |
| I5    | PI   | Unsigned | 1     |                                          |
| T52   | IFO  | Signed   | 10    | O1[16:7]                                 |
| O1    | PO   | Signed   | 19    | I1 + I2 + I3 + I4 (DCT.sv:117)           |
| O2    | PO   | Unsigned | 10    | I5 + T52 (DCT.sv:117)                    |
==============================================================================


Datapath Extraction Report

Information: Operator associated with resources 'mult_113 (DCT.sv:113)' in design 'DCT' breaks the datapath extraction because there is leakage due to truncation on its fanout to operator of resources 'add_117 (DCT.sv:117) add_117_2 (DCT.sv:117) add_117_3 (DCT.sv:117)'.  (HDL-120)

Information: Operator associated with resources 'mult_114 (DCT.sv:114)' in design 'DCT' breaks the datapath extraction because there is leakage due to truncation on its fanout to operator of resources 'add_117 (DCT.sv:117) add_117_2 (DCT.sv:117) add_117_3 (DCT.sv:117)'.  (HDL-120)

Information: Operator associated with resources 'mult_115 (DCT.sv:115)' in design 'DCT' breaks the datapath extraction because there is leakage due to truncation on its fanout to operator of resources 'add_117 (DCT.sv:117) add_117_2 (DCT.sv:117) add_117_3 (DCT.sv:117)'.  (HDL-120)

Information: Operator associated with resources 'mult_116 (DCT.sv:116)' in design 'DCT' breaks the datapath extraction because there is leakage due to truncation on its fanout to operator of resources 'add_117 (DCT.sv:117) add_117_2 (DCT.sv:117) add_117_3 (DCT.sv:117)'.  (HDL-120)


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| mult_x_2           | DW_mult_tc       | pparch (area,speed)                 |
|                    |                  | mult_arch: and     |                |
| mult_x_3           | DW_mult_tc       | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_4           | DW_mult_tc       | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| mult_x_5           | DW_mult_tc       | pparch (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| add_x_11           | DW01_inc         | apparch (area)     |                |
| add_x_14           | DW01_inc         | apparch (area)     |                |
| add_x_16           | DW01_inc         | apparch (area)     |                |
| DP_OP_61J1_122_5020                   |                    |                |
|                    | DP_OP_61J1_122_5020 | str (area,speed)                 |
|                    |                  | mult_arch: benc_radix4              |
| DP_OP_62J1_123_4750                   |                    |                |
|                    | DP_OP_62J1_123_4750 | str (area,speed)                 |
===============================================================================

1
