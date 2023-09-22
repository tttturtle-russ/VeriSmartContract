	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 4
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Contract */

	case 6: // STATE 1
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 8: // STATE 3
		;
		now.balanceX[ Index(((P1 *)_this)->i, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 4
		;
		now.balanceY[ Index(((P1 *)_this)->i, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 5
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 12
		;
		((P1 *)_this)->j = trpt->bup.ovals[1];
		((P1 *)_this)->i = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 12: // STATE 14
		;
		((P1 *)_this)->j = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 14: // STATE 16
		;
		now.allowanceX[ Index(((P1 *)_this)->i, 2) ].Spender[ Index(((P1 *)_this)->j, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 17
		;
		now.allowanceY[ Index(((P1 *)_this)->i, 2) ].Spender[ Index(((P1 *)_this)->j, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 18
		;
		((P1 *)_this)->j = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 24
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 30
		;
		now.balanceY[ Index(((P1 *)_this)->addr, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 34
		;
		((P1 *)_this)->msg_spender = trpt->bup.ovals[3];
		((P1 *)_this)->msg_receiver = trpt->bup.ovals[2];
		((P1 *)_this)->msg_sender = trpt->bup.ovals[1];
		((P1 *)_this)->msg_method = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 8);
		goto R999;

	case 20: // STATE 35
		;
		XX = 1;
		unrecv(((P1 *)_this)->channel, XX-1, 0, ((P1 *)_this)->msg_method, 1);
		unrecv(((P1 *)_this)->channel, XX-1, 1, ((P1 *)_this)->msg_sender, 0);
		unrecv(((P1 *)_this)->channel, XX-1, 2, ((P1 *)_this)->msg_receiver, 0);
		unrecv(((P1 *)_this)->channel, XX-1, 3, ((P1 *)_this)->msg_spender, 0);
		((P1 *)_this)->msg_method = trpt->bup.ovals[0];
		((P1 *)_this)->msg_sender = trpt->bup.ovals[1];
		((P1 *)_this)->msg_receiver = trpt->bup.ovals[2];
		((P1 *)_this)->msg_spender = trpt->bup.ovals[3];
		;
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 21: // STATE 36
		;
	/* 0 */	((P1 *)_this)->msg_method = trpt->bup.oval;
		;
		;
		goto R999;

	case 22: // STATE 38
		;
		now.balanceY[ Index(((P1 *)_this)->msg_sender, 2) ] = trpt->bup.ovals[1];
		now.balanceX[ Index(((P1 *)_this)->msg_sender, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 23: // STATE 124
		goto R999;

	case 24: // STATE 41
		;
	/* 0 */	((P1 *)_this)->msg_method = trpt->bup.oval;
		;
		;
		goto R999;

	case 25: // STATE 46
		;
		now.balanceX[ Index(((P1 *)_this)->msg_spender, 2) ] = trpt->bup.ovals[2];
		now.balanceX[ Index(((P1 *)_this)->msg_sender, 2) ] = trpt->bup.ovals[1];
		now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[ Index(((P1 *)_this)->msg_spender, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		
	case 26: // STATE 51
		goto R999;
;
		
	case 27: // STATE 49
		goto R999;

	case 28: // STATE 53
		;
	/* 0 */	((P1 *)_this)->msg_method = trpt->bup.oval;
		;
		;
		goto R999;

	case 29: // STATE 56
		;
		now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[0] = trpt->bup.oval;
		;
		goto R999;
;
		
	case 30: // STATE 61
		goto R999;
;
		
	case 31: // STATE 59
		goto R999;

	case 32: // STATE 63
		;
	/* 0 */	((P1 *)_this)->msg_method = trpt->bup.oval;
		;
		;
		goto R999;

	case 33: // STATE 67
		;
		now.balanceX[ Index(((P1 *)_this)->msg_receiver, 2) ] = trpt->bup.ovals[1];
		now.balanceX[ Index(((P1 *)_this)->msg_sender, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 34: // STATE 72
		goto R999;
;
		
	case 35: // STATE 70
		goto R999;

	case 36: // STATE 74
		;
	/* 0 */	((P1 *)_this)->msg_method = trpt->bup.oval;
		;
		;
		goto R999;

	case 37: // STATE 78
		;
		now.balanceY[ Index(((P1 *)_this)->msg_receiver, 2) ] = trpt->bup.ovals[1];
		now.balanceY[ Index(((P1 *)_this)->msg_sender, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 38: // STATE 83
		goto R999;
;
		
	case 39: // STATE 81
		goto R999;

	case 40: // STATE 85
		;
	/* 0 */	((P1 *)_this)->msg_method = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 43: // STATE 90
		;
		now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[0] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 45: // STATE 100
		;
		now.balanceY[ Index(((P1 *)_this)->msg_receiver, 2) ] = trpt->bup.ovals[1];
		now.balanceY[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 46: // STATE 103
		goto R999;
;
		
	case 47: // STATE 107
		goto R999;
;
		
	case 48: // STATE 109
		goto R999;
;
		
	case 49: // STATE 113
		goto R999;
;
		
	case 50: // STATE 119
		goto R999;
;
		
	case 51: // STATE 117
		goto R999;
;
		
	case 52: // STATE 122
		goto R999;

	case 53: // STATE 129
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC User */

	case 54: // STATE 1
		;
		_m = unsend(((P0 *)_this)->channel);
		;
		goto R999;

	case 55: // STATE 3
		;
		now.deposited_flag = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 57: // STATE 12
		;
		((P0 *)_this)->msg_spender = trpt->bup.ovals[3];
		((P0 *)_this)->msg_receiver = trpt->bup.ovals[2];
		((P0 *)_this)->msg_sender = trpt->bup.ovals[1];
		((P0 *)_this)->msg_method = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 58: // STATE 13
		;
		_m = unsend(((P0 *)_this)->channel);
		;
		goto R999;

	case 59: // STATE 15
		;
		((P0 *)_this)->count_1 = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 61: // STATE 25
		;
		((P0 *)_this)->msg_spender = trpt->bup.ovals[3];
		((P0 *)_this)->msg_receiver = trpt->bup.ovals[2];
		((P0 *)_this)->msg_sender = trpt->bup.ovals[1];
		((P0 *)_this)->msg_method = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 62: // STATE 26
		;
		_m = unsend(((P0 *)_this)->channel);
		;
		goto R999;

	case 63: // STATE 28
		;
		((P0 *)_this)->count_2 = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 65: // STATE 38
		;
		((P0 *)_this)->msg_spender = trpt->bup.ovals[3];
		((P0 *)_this)->msg_receiver = trpt->bup.ovals[2];
		((P0 *)_this)->msg_sender = trpt->bup.ovals[1];
		((P0 *)_this)->msg_method = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 66: // STATE 39
		;
		_m = unsend(((P0 *)_this)->channel);
		;
		goto R999;

	case 67: // STATE 41
		;
		((P0 *)_this)->count_4 = trpt->bup.oval;
		;
		goto R999;
;
		
	case 68: // STATE 47
		goto R999;
;
		
	case 69: // STATE 52
		goto R999;
;
		
	case 70: // STATE 50
		goto R999;

	case 71: // STATE 57
		;
		p_restor(II);
		;
		;
		goto R999;
	}

