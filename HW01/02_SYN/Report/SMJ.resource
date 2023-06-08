 
****************************************
Report : resources
Design : SMJ
Version: R-2020.09
Date   : Sun Mar 12 23:30:21 2023
****************************************


Resource Report for this hierarchy in file
        /RAID2/COURSE/dcs/dcs064/HW01/01_RTL/SMJ.sv
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| eq_x_1         | DW_cmp         | width=6    | eq_56 (SMJ.sv:56)          |
| eq_x_2         | DW_cmp         | width=6    | eq_57 (SMJ.sv:57)          |
| eq_x_3         | DW_cmp         | width=6    | eq_58 (SMJ.sv:58)          |
| eq_x_4         | DW_cmp         | width=6    | eq_59 (SMJ.sv:59)          |
| gt_x_5         | DW_cmp         | width=4    | gt_67 (SMJ.sv:67)          |
| gt_x_6         | DW_cmp         | width=4    | gt_67_2 (SMJ.sv:67)        |
| gt_x_7         | DW_cmp         | width=4    | gt_67_3 (SMJ.sv:67)        |
| gt_x_8         | DW_cmp         | width=4    | gt_67_4 (SMJ.sv:67)        |
| gt_x_9         | DW_cmp         | width=4    | gt_67_5 (SMJ.sv:67)        |
| gt_x_10        | DW_cmp         | width=4    | gt_67_6 (SMJ.sv:67)        |
| gt_x_11        | DW_cmp         | width=4    | gt_67_7 (SMJ.sv:67)        |
| gt_x_12        | DW_cmp         | width=4    | gt_67_8 (SMJ.sv:67)        |
| gt_x_13        | DW_cmp         | width=4    | gt_67_9 (SMJ.sv:67)        |
| gt_x_14        | DW_cmp         | width=4    | gt_67_10 (SMJ.sv:67)       |
| gt_x_22        | DW_cmp         | width=6    | s1/c1/gt_124 (SMJ.sv:124)  |
| gt_x_24        | DW_cmp         | width=6    | s1/c10/gt_124 (SMJ.sv:124) |
| gt_x_26        | DW_cmp         | width=6    | s1/c9/gt_124 (SMJ.sv:124)  |
| gt_x_28        | DW_cmp         | width=6    | s1/c8/gt_124 (SMJ.sv:124)  |
| gt_x_30        | DW_cmp         | width=6    | s1/c7/gt_124 (SMJ.sv:124)  |
| gt_x_32        | DW_cmp         | width=6    | s1/c6/gt_124 (SMJ.sv:124)  |
| gt_x_34        | DW_cmp         | width=6    | s1/c5/gt_124 (SMJ.sv:124)  |
| gt_x_36        | DW_cmp         | width=6    | s1/c4/gt_124 (SMJ.sv:124)  |
| gt_x_38        | DW_cmp         | width=6    | s1/c3/gt_124 (SMJ.sv:124)  |
| gt_x_40        | DW_cmp         | width=6    | s1/c2/gt_124 (SMJ.sv:124)  |
| DP_OP_104J1_122_322             |            |                            |
|                | DP_OP_104J1_122_322 |       |                            |
| DP_OP_105J1_123_2461            |            |                            |
|                | DP_OP_105J1_123_2461 |      |                            |
| DP_OP_106J1_124_322             |            |                            |
|                | DP_OP_106J1_124_322 |       |                            |
| DP_OP_107J1_125_322             |            |                            |
|                | DP_OP_107J1_125_322 |       |                            |
=============================================================================

Datapath Report for DP_OP_104J1_122_322
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_104J1_122_322  | add_62 (SMJ.sv:62) add_64 (SMJ.sv:64)               |
|                      | eq_62 (SMJ.sv:62) eq_64 (SMJ.sv:64)                 |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 6     |                                          |
| I2    | PI   | Unsigned | 6     |                                          |
| T4    | IFO  | Unsigned | 7     | I1 + $unsigned(1'b1) ( SMJ.sv:62 SMJ.sv:64 ) |
| O1    | PO   | Unsigned | 1     | T4 == I2 ( SMJ.sv:62 SMJ.sv:64 )         |
==============================================================================

Datapath Report for DP_OP_105J1_123_2461
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_105J1_123_2461 | add_62_2 (SMJ.sv:62) add_64_2 (SMJ.sv:64)           |
|                      | eq_62_2 (SMJ.sv:62) eq_64_2 (SMJ.sv:64)             |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 6     |                                          |
| I2    | PI   | Unsigned | 6     |                                          |
| I3    | PI   | Unsigned | 6     |                                          |
| T6    | IFO  | Unsigned | 7     | I1 + $unsigned(1'b1) ( SMJ.sv:62 SMJ.sv:64 ) |
| O1    | PO   | Unsigned | 1     | T6 == I2 (SMJ.sv:62)                     |
| O2    | PO   | Unsigned | 1     | T6 == I3 (SMJ.sv:64)                     |
==============================================================================

Datapath Report for DP_OP_106J1_124_322
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_106J1_124_322  | add_63 (SMJ.sv:63) eq_63 (SMJ.sv:63)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 6     |                                          |
| I2    | PI   | Unsigned | 6     |                                          |
| T8    | IFO  | Unsigned | 7     | I1 + $unsigned(1'b1) (SMJ.sv:63)         |
| O1    | PO   | Unsigned | 1     | T8 == I2 (SMJ.sv:63)                     |
==============================================================================

Datapath Report for DP_OP_107J1_125_322
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_107J1_125_322  | add_63_2 (SMJ.sv:63) eq_63_2 (SMJ.sv:63)            |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 6     |                                          |
| I2    | PI   | Unsigned | 6     |                                          |
| T10   | IFO  | Unsigned | 7     | I1 + $unsigned(1'b1) (SMJ.sv:63)         |
| O1    | PO   | Unsigned | 1     | T10 == I2 (SMJ.sv:63)                    |
==============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| eq_x_1             | DW_cmp           | apparch (area)     |                |
| eq_x_2             | DW_cmp           | apparch (area)     |                |
| eq_x_3             | DW_cmp           | apparch (area)     |                |
| eq_x_4             | DW_cmp           | apparch (area)     |                |
| gt_x_5             | DW_cmp           | apparch (area)     |                |
| gt_x_6             | DW_cmp           | apparch (area)     |                |
| gt_x_7             | DW_cmp           | apparch (area)     |                |
| gt_x_8             | DW_cmp           | apparch (area)     |                |
| gt_x_9             | DW_cmp           | apparch (area)     |                |
| gt_x_10            | DW_cmp           | apparch (area)     |                |
| gt_x_11            | DW_cmp           | apparch (area)     |                |
| gt_x_12            | DW_cmp           | apparch (area)     |                |
| gt_x_13            | DW_cmp           | apparch (area)     |                |
| gt_x_14            | DW_cmp           | apparch (area)     |                |
| gt_x_22            | DW_cmp           | apparch (area)     |                |
| gt_x_24            | DW_cmp           | apparch (area)     |                |
| gt_x_26            | DW_cmp           | apparch (area)     |                |
| gt_x_28            | DW_cmp           | apparch (area)     |                |
| gt_x_30            | DW_cmp           | apparch (area)     |                |
| gt_x_32            | DW_cmp           | apparch (area)     |                |
| gt_x_34            | DW_cmp           | apparch (area)     |                |
| gt_x_36            | DW_cmp           | apparch (area)     |                |
| gt_x_38            | DW_cmp           | apparch (area)     |                |
| gt_x_40            | DW_cmp           | apparch (area)     |                |
| DP_OP_104J1_122_322                   |                    |                |
|                    | DP_OP_104J1_122_322 | str (area)      |                |
| DP_OP_105J1_123_2461                  |                    |                |
|                    | DP_OP_105J1_123_2461 | str (area)     |                |
| DP_OP_106J1_124_322                   |                    |                |
|                    | DP_OP_106J1_124_322 | str (area)      |                |
| DP_OP_107J1_125_322                   |                    |                |
|                    | DP_OP_107J1_125_322 | str (area)      |                |
===============================================================================

1
