debImport "/RAID2/COURSE/dcs/dcs064/Lab01/01_RTL/BCD.sv" "-sv" -path \
          {/RAID2/COURSE/dcs/dcs064/Lab01/01_RTL}
debImport "/RAID2/COURSE/dcs/dcs064/Lab01/01_RTL/BCD.sv" "-sv" -path \
          {/RAID2/COURSE/dcs/dcs064/Lab01/01_RTL}
nsMsgSwitchTab -tab cmpl
debReload
srcDeselectAll -win $_nTrace1
srcSelect -word -line 0 -pos 2 -win $_nTrace1
srcShowDefine -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 0 -pos 2 -win $_nTrace1
srcAction -pos 0 2 0 -win $_nTrace1 -name "BCD" -ctrlKey off
srcShowDefine -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 0 -pos 2 -win $_nTrace1
srcAction -pos 0 2 1 -win $_nTrace1 -name "BCD" -ctrlKey off
srcShowCalling -win $_nTrace1
srcShowCalling -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 0 -pos 2 -win $_nTrace1
srcAction -pos 0 2 1 -win $_nTrace1 -name "BCD" -ctrlKey off
srcShowCalling -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "BCD"
schPopViewUp -win $_nSchema2
schPopViewUp -win $_nSchema2
schSelect -win $_nSchema2 -inst "BCD:Always0:29:34:Combo"
schPushViewIn -win $_nSchema2
srcSelect -win $_nTrace1 -range {29 34 1 2 1 1}
schCreateWindow -delim "." -win $_nSchema1 -scope "BCD"
schSelect -win $_nSchema3 -port "in_bin\[8:0\]"
schSelect -win $_nSchema3 -port "in_bin\[8:0\]"
schPopViewUp -win $_nSchema3
schSelect -win $_nSchema3 -port "in_bin\[8:0\]"
schPopViewUp -win $_nSchema3
schSelect -win $_nSchema3 -signal "in_bin\[8:0\]"
schFocusConnection -win $_nSchema3
schSelect -win $_nSchema3 -inst "BCD:Always0:29:34:Combo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {29 34 1 2 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "out_ten" -line 32 -pos 1 -win $_nTrace1
srcAction -pos 31 1 4 -win $_nTrace1 -name "out_ten" -ctrlKey off
srcShowCalling -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "BCD"
schPopViewUp -win $_nSchema4
nsMsgSwitchTab -tab general
debImport "/RAID2/COURSE/dcs/dcs064/Lab01/01_RTL/BCD.sv" \
          "/RAID2/COURSE/dcs/dcs064/Lab01/01_RTL/PATTERN.sv" \
          "/RAID2/COURSE/dcs/dcs064/Lab01/01_RTL/TESTBED.sv" "-sv" -path \
          {/RAID2/COURSE/dcs/dcs064/Lab01/01_RTL}
schCreateWindow -delim "." -win $_nSchema1 -scope "TESTBED"
schSelect -win $_nSchema5 -inst "TESTBED:Init0:17:26:Init"
schPushViewIn -win $_nSchema5
srcSelect -win $_nTrace1 -range {17 26 1 2 1 1}
verdiDockWidgetSetCurTab -dock windowDock_nSchema_5
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_5
schSelect -win $_nSchema5 -inst "I_PATTERN"
schPushViewIn -win $_nSchema5
schSelect -win $_nSchema5 -inst "I_BCD"
schPushViewIn -win $_nSchema5
schSelect -win $_nSchema5 -inst "BCD:Always0:29:34:Combo"
schPushViewIn -win $_nSchema5
srcSetScope -win $_nTrace1 "TESTBED.I_BCD" -delim "."
srcSelect -win $_nTrace1 -range {29 34 1 2 1 1}
schSelect -win $_nSchema5 -signal "in_bin\[8:0\]"
schFocusConnection -win $_nSchema5
schSelect -win $_nSchema5 -signal "out_hundred\[2:0\]"
schFocusConnection -win $_nSchema5
schSelect -win $_nSchema5 -port "out_hundred\[2:0\]"
schPopViewUp -win $_nSchema5
schSelect -win $_nSchema5 -inst "I_BCD"
schPushViewIn -win $_nSchema5
nsMsgSwitchTab -tab general
wvCreateWindow
wvSetPosition -win $_nWave6 {("G1" 0)}
wvOpenFile -win $_nWave6 {/RAID2/COURSE/dcs/dcs064/Lab01/01_RTL/BCD.fsdb}
schZoomOut -win $_nSchema5
schSelect -win $_nSchema5 -inst "BCD:Always0:29:34:Combo"
schTraceConnectivity -win $_nSchema5
wvSelectGroup -win $_nWave6 {G1}
wvSelectGroup -win $_nWave6 {G1}
schSelect -win $_nSchema5 -inst "BCD:Always0:29:34:Combo"
schSelect -win $_nSchema5 -inst "BCD:Always0:29:34:Combo"
schSelect -win $_nSchema5 -inst "BCD:Always0:29:34:Combo"
schZoom {5099} {2107} {5191} {2567} -win $_nSchema5
schSelect -win $_nSchema5 -inst "BCD:Always0:29:34:Combo"
schPushViewIn -win $_nSchema5
srcSelect -win $_nTrace1 -range {29 34 1 2 1 1}
schFit -win $_nSchema5
schSetOptions -win $_nSchema5 -pan on
schSelect -win $_nSchema5 -inst "BCD:Always0:29:34:Combo"
schFit -win $_nSchema5
wvCreateWindow
wvSetPosition -win $_nWave7 {("G1" 0)}
wvOpenFile -win $_nWave7 {/RAID2/COURSE/dcs/dcs064/Lab01/01_RTL/BCD.fsdb}
schAddSelectedToWave -win $_nSchema5 -clipboard
wvDrop -win $_nWave7
wvTpfCloseForm -win $_nWave7
wvGetSignalClose -win $_nWave7
wvCloseWindow -win $_nWave7
schAddSelectedToWave -win $_nSchema5 -clipboard
wvDrop -win $_nWave6
srcSetOptions -win $_nTrace1 -annotate on
schSetOptions -win $_nSchema1 -annotate on
wvSetCursor -win $_nWave6 526.489362 -snap {("G1" 1)}
wvSetCursor -win $_nWave6 698.404255 -snap {("G1" 1)}
wvZoom -win $_nWave6 773.617021 902.553191
wvSetCursor -win $_nWave6 900.000000
wvZoomAll -win $_nWave6
wvZoomIn -win $_nWave6
wvZoomIn -win $_nWave6
wvZoomIn -win $_nWave6
wvZoomIn -win $_nWave6
wvZoomIn -win $_nWave6
wvZoomIn -win $_nWave6
wvPrevView -win $_nWave6
wvSelectGroup -win $_nWave6 {G2}
wvSetCursor -win $_nWave6 29291.888298 -snap {("G2" 0)}
wvSelectSignal -win $_nWave6 {( "G1" 3 )} 
wvSelectSignal -win $_nWave6 {( "G1" 3 )} 
wvSetRadix -win $_nWave6 -format UDec
srcDeselectAll -win $_nTrace1
srcSelect -signal "out_hundred" -line 31 -pos 1 -win $_nTrace1
srcAction -pos 30 1 4 -win $_nTrace1 -name "out_hundred" -ctrlKey off
srcSearchNext -win $_nTrace1
srcSearchNext -win $_nTrace1
debExit
