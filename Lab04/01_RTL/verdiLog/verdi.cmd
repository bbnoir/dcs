verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiDockWidgetHide -dock widgetDock_WelcomePage
debImport "/home/RAID2/COURSE/dcs/dcsta02/TA/Lab03/01_RTL/Counter.sv" \
          "/home/RAID2/COURSE/dcs/dcsta02/TA/Lab03/01_RTL/PATTERN.sv" \
          "/home/RAID2/COURSE/dcs/dcsta02/TA/Lab03/01_RTL/TESTBENCH.sv" "-sv" \
          -path {/home/RAID2/COURSE/dcs/dcsta02/TA/Lab03/01_RTL}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {23 24 4 3 9 2} -backward
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {23 24 4 3 7 11} -backward
srcDeselectAll -win $_nTrace1
srcAction -pos 22 3 5 -win $_nTrace1 -name "\"Counter_SYN.fsdb\"" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "TESTBED.I_Counter" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED.I_Counter" -delim "."
srcHBSelect "TESTBED.I_Counter" -win $_nTrace1
srcHBSelect "TESTBED.I_PATTERN" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcAction -pos 10 0 15 -win $_nTrace1 -name \
          "//---------------------------------------------------------------------" \
          -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {13 16 1 1 17 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {17 18 1 1 1 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "counter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "TESTBED" -win $_nTrace1
srcHBSelect "TESTBED" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "counter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "counter" -win $_nTrace1
srcHBSelect "TESTBED.I_Counter" -win $_nTrace1
srcHBSelect "TESTBED" -win $_nTrace1
srcHBSelect "TESTBED" -win $_nTrace1
srcSetScope -win $_nTrace1 "TESTBED" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -inst "I_Counter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "I_Counter" -win $_nTrace1
srcShowDefine -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {32 32 3 4 1 1}
srcShowCalling -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcShowCalling -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "I_PATTERN" -win $_nTrace1
srcShowDefine -win $_nTrace1
srcSelect -win $_nTrace1 -range {2 2 3 4 1 1}
srcShowCalling -win $_nTrace1
srcSelect -win $_nTrace1 -range {40 40 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -inst "I_Counter" -win $_nTrace1
srcShowDefine -win $_nTrace1
srcSelect -win $_nTrace1 -range {1 1 3 4 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "signal" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "counter" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "signal" -win $_nTrace1
srcTraceDriver "TESTBED.I_Counter.signal" -win $_nTrace1
nsMsgSwitchTab -tab trace
srcDeselectAll -win $_nTrace1
srcSelect -signal "signal" -win $_nTrace1
srcTraceLoad "TESTBED.I_Counter.signal" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 0 -pos 2 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -word -line 0 -pos 2 -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "TESTBED.I_Counter"
wvCreateWindow
debExit
