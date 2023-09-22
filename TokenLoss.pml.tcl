# maxx 1
# maxx 2
wm title . "scenario"
wm geometry . 640x600+650+100
canvas .c -width 800 -height 800 \
	-scrollregion {0c -1c 30c 100c} \
	-xscrollcommand ".hscroll set" \
	-yscrollcommand ".vscroll set" \
	-bg white -relief raised -bd 2
scrollbar .vscroll -relief sunken  -command ".c yview"
scrollbar .hscroll -relief sunken -orient horiz  -command ".c xview"
pack append . \
	.vscroll {right filly} \
	.hscroll {bottom fillx} \
	.c {top expand fill}
.c yview moveto 0
# ProcLine[1] stays at 0 (Used 0 nobox 0)
.c create rectangle 104 0 180 20 -fill black
# ProcLine[1] stays at 0 (Used 0 nobox 0)
.c create rectangle 103 -2 177 18 -fill ivory
.c create text 140 8 -text "0::init:"
.c create text 70 32 -fill #eef -text "1"
.c create line 140 32 460 32 -fill #eef -dash {6 4}
.c create line 300 36 300 20 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 0 to 1 (Used 0 nobox 0)
.c create rectangle 254 24 350 44 -fill black
# ProcLine[2] stays at 1 (Used 0 nobox 0)
.c create rectangle 252 22 348 42 -fill ivory
.c create text 300 32 -text "1:Contract"
.c create text 70 56 -fill #eef -text "3"
.c create line 140 56 460 56 -fill #eef -dash {6 4}
.c create line 460 36 460 44 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 0 to 3 (Used 0 nobox 0)
.c create rectangle 435 48 489 68 -fill black
# ProcLine[3] stays at 3 (Used 0 nobox 0)
.c create rectangle 434 46 486 66 -fill ivory
.c create text 460 56 -text "2:User"
.c create text 70 80 -fill #eef -text "5"
.c create line 140 80 460 80 -fill #eef -dash {6 4}
.c create line 460 72 460 68 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 3 to 5 (Used 1 nobox 0)
# ProcLine[3] stays at 5 (Used 1 nobox 1)
.c create rectangle 380 70 540 90 -fill white -width 0
.c create text 460 80 -text "channel!0,1,-1,-1"
.c create line 460 90 380 90 -fill darkred -tags mesg -width 2
.c create line 380 90 300 90 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 104 -fill #eef -text "7"
.c create line 140 104 460 104 -fill #eef -dash {6 4}
.c create line 300 48 300 92 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 1 to 7 (Used 1 nobox 1)
# ProcLine[2] stays at 7 (Used 1 nobox 1)
.c create rectangle 220 94 380 114 -fill white -width 0
.c create text 300 104 -text "channel?0,1,-1,-1"
.c create text 70 128 -fill #eef -text "9"
.c create line 140 128 460 128 -fill #eef -dash {6 4}
.c create line 300 120 300 116 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 7 to 9 (Used 1 nobox 1)
# ProcLine[2] stays at 9 (Used 1 nobox 1)
.c create rectangle 162 118 438 138 -fill white -width 0
.c create text 300 128 -text "\[DBG\]: User 1 initialization"
.c create text 70 152 -fill #eef -text "11"
.c create line 140 152 460 152 -fill #eef -dash {6 4}
.c create line 460 96 460 140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 5 to 11 (Used 1 nobox 1)
# ProcLine[3] stays at 11 (Used 1 nobox 1)
.c create rectangle 386 142 534 162 -fill white -width 0
.c create text 460 152 -text "channel!5,1,1,-1"
.c create line 460 162 380 162 -fill darkred -tags mesg -width 2
.c create line 380 162 300 162 -fill darkred -width 2 -arrow both -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 176 -fill #eef -text "13"
.c create line 140 176 460 176 -fill #eef -dash {6 4}
.c create line 300 144 300 164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 9 to 13 (Used 1 nobox 1)
# ProcLine[2] stays at 13 (Used 1 nobox 1)
.c create rectangle 226 166 374 186 -fill white -width 0
.c create text 300 176 -text "channel?5,1,1,-1"
.c create text 70 200 -fill #eef -text "15"
.c create line 140 200 460 200 -fill #eef -dash {6 4}
.c create line 300 192 300 188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 13 to 15 (Used 1 nobox 1)
# ProcLine[2] stays at 15 (Used 1 nobox 1)
.c create rectangle 10 190 590 210 -fill white -width 0
.c create text 300 200 -text "\[DBG\]: call swapXY(msg_sender:1, 1, 0, 0, 1, msg_receiver:1)"
.c create text 70 224 -fill #eef -text "17"
.c create line 140 224 460 224 -fill #eef -dash {6 4}
.c create line 140 36 140 212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[1] from 0 to 17 (Used 1 nobox 1)
# ProcLine[1] stays at 17 (Used 1 nobox 1)
.c create rectangle 103 214 177 234 -fill white -width 0
.c create text 140 224 -text "timeout"
.c lower grid
.c raise mesg
