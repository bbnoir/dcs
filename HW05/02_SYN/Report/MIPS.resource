 
****************************************
Report : resources
Design : MIPS
Version: T-2022.03
Date   : Fri May 12 08:37:29 2023
****************************************


Resource Report for this hierarchy in file
        /RAID2/COURSE/dcs/dcs064/HW05/01_RTL/MIPS.sv
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| ash_12         | DW_leftsh      | A_width=16 | sll_154 (MIPS.sv:154)      |
|                |                | SH_width=4 |                            |
| ashr_13        | DW_rightsh     | A_width=16 | srl_155 (MIPS.sv:155)      |
|                |                | SH_width=4 |                            |
| ashr_43        | DW_rightsh     | A_width=16 | srl_337 (MIPS.sv:337)      |
|                |                | SH_width=4 |                            |
| ashr_44        | DW_rightsh     | A_width=16 | srl_338 (MIPS.sv:338)      |
|                |                | SH_width=4 |                            |
| gt_x_45        | DW_cmp         | width=4    | gt_339 (MIPS.sv:339)       |
| ash_46         | DW_leftsh      | A_width=16 | sll_341 (MIPS.sv:341)      |
|                |                | SH_width=4 |                            |
| sub_x_48       | DW01_sub       | width=16   | sub_348 (MIPS.sv:348)      |
| ashr_49        | DW_rightsh     | A_width=16 | srl_350 (MIPS.sv:350)      |
|                |                | SH_width=4 |                            |
| sub_x_50       | DW01_sub       | width=16   | sub_354 (MIPS.sv:354)      |
| ashr_51        | DW_rightsh     | A_width=16 | srl_354 (MIPS.sv:354)      |
|                |                | SH_width=4 |                            |
| ash_52         | DW_leftsh      | A_width=16 | sll_357 (MIPS.sv:357)      |
|                |                | SH_width=4 |                            |
| ash_53         | DW_leftsh      | A_width=16 | sll_362 (MIPS.sv:362)      |
|                |                | SH_width=4 |                            |
| gt_x_323       | DW_cmp         | width=16   | gt_272 (MIPS.sv:272)       |
|                |                |            | gt_274 (MIPS.sv:274)       |
|                |                |            | gt_349 (MIPS.sv:349)       |
| sub_x_47       | DW01_sub       | width=16   | sub_347 (MIPS.sv:347)      |
|                |                |            | sub_350 (MIPS.sv:350)      |
| DP_OP_410J1_122_179             |            |                            |
|                | DP_OP_410J1_122_179 |       |                            |
=============================================================================

Datapath Report for DP_OP_410J1_122_179
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_410J1_122_179  | add_150 (MIPS.sv:150) add_156 (MIPS.sv:156)         |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Unsigned | 16    |                                          |
| I2    | PI   | Unsigned | 16    |                                          |
| O1    | PO   | Unsigned | 16    | I1 + I2 ( MIPS.sv:150 MIPS.sv:156 )      |
==============================================================================


Datapath Extraction Report

Information: Operator associated with resources 'sub_347 (MIPS.sv:347) sub_350 (MIPS.sv:350)' in design 'MIPS' breaks the datapath extraction because there is leakage due to truncation on its fanout to operator of resources 'srl_350 (MIPS.sv:350)'.  (HDL-120)

Information: Operator associated with resources 'sub_354 (MIPS.sv:354)' in design 'MIPS' breaks the datapath extraction because there is leakage due to truncation on its fanout to operator of resources 'srl_354 (MIPS.sv:354)'.  (HDL-120)


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| ash_12             | DW_leftsh        | astr (area)        |                |
| ashr_13            | DW_rightsh       | astr (area)        |                |
| ashr_43            | DW_rightsh       | astr (area)        |                |
| ashr_44            | DW_rightsh       | astr (area)        |                |
| gt_x_45            | DW_cmp           | apparch (area)     |                |
| ash_46             | DW_leftsh        | astr (area)        |                |
| sub_x_48           | DW01_sub         | pparch (area,speed)                 |
| ashr_49            | DW_rightsh       | astr (area)        |                |
| sub_x_50           | DW01_sub         | apparch (area)     |                |
| ashr_51            | DW_rightsh       | astr (area)        |                |
| ash_52             | DW_leftsh        | astr (area)        |                |
| ash_53             | DW_leftsh        | astr (area)        |                |
| gt_x_323           | DW_cmp           | apparch (area)     |                |
| sub_x_47           | DW01_sub         | apparch (area)     |                |
| DP_OP_410J1_122_179                   |                    |                |
|                    | DP_OP_410J1_122_179 | str (area)      |                |
===============================================================================

1
