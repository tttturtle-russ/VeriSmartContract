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
.c create rectangle 256 24 348 44 -fill black
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
.c create line 460 90 380 90 -fill darkblue -tags mesg -width 2
.c create line 380 90 300 90 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 80 -fill #eef -text "5"
.c create line 140 80 460 80 -fill #eef -dash {6 4}
.c create line 460 72 460 68 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 3 to 5 (Used 1 nobox 0)
# ProcLine[3] stays at 5 (Used 1 nobox 1)
.c create rectangle 380 70 540 90 -fill white -width 0
.c create text 460 80 -text "channel!0,1,-1,-1"
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
.c create line 460 162 380 162 -fill darkblue -tags mesg -width 2
.c create line 380 162 300 162 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 152 -fill #eef -text "11"
.c create line 140 152 460 152 -fill #eef -dash {6 4}
.c create line 460 96 460 140 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 5 to 11 (Used 1 nobox 1)
# ProcLine[3] stays at 11 (Used 1 nobox 1)
.c create rectangle 386 142 534 162 -fill white -width 0
.c create text 460 152 -text "channel!3,1,0,-1"
.c create text 70 176 -fill #eef -text "13"
.c create line 140 176 460 176 -fill #eef -dash {6 4}
.c create line 300 144 300 164 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 9 to 13 (Used 1 nobox 1)
# ProcLine[2] stays at 13 (Used 1 nobox 1)
.c create rectangle 226 166 374 186 -fill white -width 0
.c create text 300 176 -text "channel?3,1,0,-1"
.c create text 70 200 -fill #eef -text "15"
.c create line 140 200 460 200 -fill #eef -dash {6 4}
.c create line 300 192 300 188 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 13 to 15 (Used 1 nobox 1)
# ProcLine[2] stays at 15 (Used 1 nobox 1)
.c create rectangle 36 190 564 210 -fill white -width 0
.c create text 300 200 -text "\[DBG\]: call transferX(msg_sender:1, msg_receiver:0, 1)"
.c create text 70 224 -fill #eef -text "17"
.c create line 140 224 460 224 -fill #eef -dash {6 4}
.c create line 300 216 300 212 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 15 to 17 (Used 1 nobox 1)
# ProcLine[2] stays at 17 (Used 1 nobox 1)
.c create rectangle 60 214 540 234 -fill white -width 0
.c create text 300 224 -text "\[DBG\]: transferX(msg_sender:1, msg_receiver:0, 1)"
.c create line 460 258 380 258 -fill darkblue -tags mesg -width 2
.c create line 380 258 300 258 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 248 -fill #eef -text "19"
.c create line 140 248 460 248 -fill #eef -dash {6 4}
.c create line 460 168 460 236 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 11 to 19 (Used 1 nobox 1)
# ProcLine[3] stays at 19 (Used 1 nobox 1)
.c create rectangle 386 238 534 258 -fill white -width 0
.c create text 460 248 -text "channel!1,1,-1,0"
.c create text 70 272 -fill #eef -text "21"
.c create line 140 272 460 272 -fill #eef -dash {6 4}
.c create line 300 240 300 260 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 17 to 21 (Used 1 nobox 1)
# ProcLine[2] stays at 21 (Used 1 nobox 1)
.c create rectangle 226 262 374 282 -fill white -width 0
.c create text 300 272 -text "channel?1,1,-1,0"
.c create text 70 296 -fill #eef -text "23"
.c create line 140 296 460 296 -fill #eef -dash {6 4}
.c create line 300 288 300 284 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 21 to 23 (Used 1 nobox 1)
# ProcLine[2] stays at 23 (Used 1 nobox 1)
.c create rectangle 47 286 553 306 -fill white -width 0
.c create text 300 296 -text "\[DBG\]: call approveX(msg_sender:1, msg_spender:1, 1)"
.c create line 460 330 380 330 -fill darkblue -tags mesg -width 2
.c create line 380 330 300 330 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 320 -fill #eef -text "25"
.c create line 140 320 460 320 -fill #eef -dash {6 4}
.c create line 460 264 460 308 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 19 to 25 (Used 1 nobox 1)
# ProcLine[3] stays at 25 (Used 1 nobox 1)
.c create rectangle 386 310 534 330 -fill white -width 0
.c create text 460 320 -text "channel!1,1,-1,0"
.c create text 70 344 -fill #eef -text "27"
.c create line 140 344 460 344 -fill #eef -dash {6 4}
.c create line 300 312 300 332 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 23 to 27 (Used 1 nobox 1)
# ProcLine[2] stays at 27 (Used 1 nobox 1)
.c create rectangle 226 334 374 354 -fill white -width 0
.c create text 300 344 -text "channel?1,1,-1,0"
.c create text 70 368 -fill #eef -text "29"
.c create line 140 368 460 368 -fill #eef -dash {6 4}
.c create line 300 360 300 356 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 27 to 29 (Used 1 nobox 1)
# ProcLine[2] stays at 29 (Used 1 nobox 1)
.c create rectangle 47 358 553 378 -fill white -width 0
.c create text 300 368 -text "\[DBG\]: call approveX(msg_sender:1, msg_spender:1, 1)"
.c create line 460 402 380 402 -fill darkblue -tags mesg -width 2
.c create line 380 402 300 402 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 392 -fill #eef -text "31"
.c create line 140 392 460 392 -fill #eef -dash {6 4}
.c create line 460 336 460 380 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 25 to 31 (Used 1 nobox 1)
# ProcLine[3] stays at 31 (Used 1 nobox 1)
.c create rectangle 386 382 534 402 -fill white -width 0
.c create text 460 392 -text "channel!1,1,-1,0"
.c create text 70 416 -fill #eef -text "33"
.c create line 140 416 460 416 -fill #eef -dash {6 4}
.c create line 300 384 300 404 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 29 to 33 (Used 1 nobox 1)
# ProcLine[2] stays at 33 (Used 1 nobox 1)
.c create rectangle 226 406 374 426 -fill white -width 0
.c create text 300 416 -text "channel?1,1,-1,0"
.c create text 70 440 -fill #eef -text "35"
.c create line 140 440 460 440 -fill #eef -dash {6 4}
.c create line 300 432 300 428 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 33 to 35 (Used 1 nobox 1)
# ProcLine[2] stays at 35 (Used 1 nobox 1)
.c create rectangle 47 430 553 450 -fill white -width 0
.c create text 300 440 -text "\[DBG\]: call approveX(msg_sender:1, msg_spender:1, 1)"
.c create line 460 474 380 474 -fill darkblue -tags mesg -width 2
.c create line 380 474 300 474 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 464 -fill #eef -text "37"
.c create line 140 464 460 464 -fill #eef -dash {6 4}
.c create line 460 408 460 452 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 31 to 37 (Used 1 nobox 1)
# ProcLine[3] stays at 37 (Used 1 nobox 1)
.c create rectangle 386 454 534 474 -fill white -width 0
.c create text 460 464 -text "channel!3,1,0,-1"
.c create text 70 488 -fill #eef -text "39"
.c create line 140 488 460 488 -fill #eef -dash {6 4}
.c create line 300 456 300 476 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 35 to 39 (Used 1 nobox 1)
# ProcLine[2] stays at 39 (Used 1 nobox 1)
.c create rectangle 226 478 374 498 -fill white -width 0
.c create text 300 488 -text "channel?3,1,0,-1"
.c create text 70 512 -fill #eef -text "41"
.c create line 140 512 460 512 -fill #eef -dash {6 4}
.c create line 300 504 300 500 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 39 to 41 (Used 1 nobox 1)
# ProcLine[2] stays at 41 (Used 1 nobox 1)
.c create rectangle 36 502 564 522 -fill white -width 0
.c create text 300 512 -text "\[DBG\]: call transferX(msg_sender:1, msg_receiver:0, 1)"
.c create line 460 546 380 546 -fill darkblue -tags mesg -width 2
.c create line 380 546 300 546 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 536 -fill #eef -text "43"
.c create line 140 536 460 536 -fill #eef -dash {6 4}
.c create line 460 480 460 524 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 37 to 43 (Used 1 nobox 1)
# ProcLine[3] stays at 43 (Used 1 nobox 1)
.c create rectangle 386 526 534 546 -fill white -width 0
.c create text 460 536 -text "channel!3,1,0,-1"
.c create text 70 560 -fill #eef -text "45"
.c create line 140 560 460 560 -fill #eef -dash {6 4}
.c create line 300 528 300 548 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 41 to 45 (Used 1 nobox 1)
# ProcLine[2] stays at 45 (Used 1 nobox 1)
.c create rectangle 226 550 374 570 -fill white -width 0
.c create text 300 560 -text "channel?3,1,0,-1"
.c create text 70 584 -fill #eef -text "47"
.c create line 140 584 460 584 -fill #eef -dash {6 4}
.c create line 300 576 300 572 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 45 to 47 (Used 1 nobox 1)
# ProcLine[2] stays at 47 (Used 1 nobox 1)
.c create rectangle 36 574 564 594 -fill white -width 0
.c create text 300 584 -text "\[DBG\]: call transferX(msg_sender:1, msg_receiver:0, 1)"
.c create line 460 618 380 618 -fill darkblue -tags mesg -width 2
.c create line 380 618 300 618 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 608 -fill #eef -text "49"
.c create line 140 608 460 608 -fill #eef -dash {6 4}
.c create line 460 552 460 596 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 43 to 49 (Used 1 nobox 1)
# ProcLine[3] stays at 49 (Used 1 nobox 1)
.c create rectangle 386 598 534 618 -fill white -width 0
.c create text 460 608 -text "channel!3,1,0,-1"
.c create text 70 632 -fill #eef -text "51"
.c create line 140 632 460 632 -fill #eef -dash {6 4}
.c create line 300 600 300 620 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 47 to 51 (Used 1 nobox 1)
# ProcLine[2] stays at 51 (Used 1 nobox 1)
.c create rectangle 226 622 374 642 -fill white -width 0
.c create text 300 632 -text "channel?3,1,0,-1"
.c create text 70 656 -fill #eef -text "53"
.c create line 140 656 460 656 -fill #eef -dash {6 4}
.c create line 300 648 300 644 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 51 to 53 (Used 1 nobox 1)
# ProcLine[2] stays at 53 (Used 1 nobox 1)
.c create rectangle 36 646 564 666 -fill white -width 0
.c create text 300 656 -text "\[DBG\]: call transferX(msg_sender:1, msg_receiver:0, 1)"
.c create line 460 690 380 690 -fill darkblue -tags mesg -width 2
.c create line 380 690 300 690 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 680 -fill #eef -text "55"
.c create line 140 680 460 680 -fill #eef -dash {6 4}
.c create line 460 624 460 668 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 49 to 55 (Used 1 nobox 1)
# ProcLine[3] stays at 55 (Used 1 nobox 1)
.c create rectangle 386 670 534 690 -fill white -width 0
.c create text 460 680 -text "channel!5,1,1,-1"
.c create text 70 704 -fill #eef -text "57"
.c create line 140 704 460 704 -fill #eef -dash {6 4}
.c create line 300 672 300 692 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 53 to 57 (Used 1 nobox 1)
# ProcLine[2] stays at 57 (Used 1 nobox 1)
.c create rectangle 226 694 374 714 -fill white -width 0
.c create text 300 704 -text "channel?5,1,1,-1"
.c create text 70 728 -fill #eef -text "59"
.c create line 140 728 460 728 -fill #eef -dash {6 4}
.c create line 300 720 300 716 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 57 to 59 (Used 1 nobox 1)
# ProcLine[2] stays at 59 (Used 1 nobox 1)
.c create rectangle 10 718 590 738 -fill white -width 0
.c create text 300 728 -text "\[DBG\]: call swapXY(msg_sender:1, 1, 0, 0, 1, msg_receiver:1)"
.c create line 460 762 380 762 -fill darkblue -tags mesg -width 2
.c create line 380 762 300 762 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 752 -fill #eef -text "61"
.c create line 140 752 460 752 -fill #eef -dash {6 4}
.c create line 460 696 460 740 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 55 to 61 (Used 1 nobox 1)
# ProcLine[3] stays at 61 (Used 1 nobox 1)
.c create rectangle 386 742 534 762 -fill white -width 0
.c create text 460 752 -text "channel!5,1,1,-1"
.c create text 70 776 -fill #eef -text "63"
.c create line 140 776 460 776 -fill #eef -dash {6 4}
.c create line 300 744 300 764 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 59 to 63 (Used 1 nobox 1)
# ProcLine[2] stays at 63 (Used 1 nobox 1)
.c create rectangle 226 766 374 786 -fill white -width 0
.c create text 300 776 -text "channel?5,1,1,-1"
.c create text 70 800 -fill #eef -text "65"
.c create line 140 800 460 800 -fill #eef -dash {6 4}
.c create line 300 792 300 788 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 63 to 65 (Used 1 nobox 1)
# ProcLine[2] stays at 65 (Used 1 nobox 1)
.c create rectangle 10 790 590 810 -fill white -width 0
.c create text 300 800 -text "\[DBG\]: call swapXY(msg_sender:1, 1, 0, 0, 1, msg_receiver:1)"
.c create line 460 834 380 834 -fill darkblue -tags mesg -width 2
.c create line 380 834 300 834 -fill darkblue -width 2 -arrow last -arrowshape {5 5 5} -tags mesg
.c raise mesg
.c create text 70 824 -fill #eef -text "67"
.c create line 140 824 460 824 -fill #eef -dash {6 4}
.c create line 460 768 460 812 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[3] from 61 to 67 (Used 1 nobox 1)
# ProcLine[3] stays at 67 (Used 1 nobox 1)
.c create rectangle 386 814 534 834 -fill white -width 0
.c create text 460 824 -text "channel!5,1,1,-1"
.c create text 70 848 -fill #eef -text "69"
.c create line 140 848 460 848 -fill #eef -dash {6 4}
.c create line 300 816 300 836 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 65 to 69 (Used 1 nobox 1)
# ProcLine[2] stays at 69 (Used 1 nobox 1)
.c create rectangle 226 838 374 858 -fill white -width 0
.c create text 300 848 -text "channel?5,1,1,-1"
.c create text 70 872 -fill #eef -text "71"
.c create line 140 872 460 872 -fill #eef -dash {6 4}
.c create line 300 864 300 860 -fill lightgrey -tags grid -width 1 
.c lower grid
# ProcLine[2] from 69 to 71 (Used 1 nobox 1)
# ProcLine[2] stays at 71 (Used 1 nobox 1)
.c create rectangle 10 862 590 882 -fill white -width 0
.c create text 300 872 -text "\[DBG\]: call swapXY(msg_sender:1, 1, 0, 0, 1, msg_receiver:1)"
.c lower grid
.c raise mesg
