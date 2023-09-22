#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - TokenLoss.pml:313 - [(run Contract(channel,0))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 1, ((P2 *)_this)->channel, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - TokenLoss.pml:316 - [(run User(channel,1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(addproc(II, 1, 0, ((P2 *)_this)->channel, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 4 - TokenLoss.pml:317 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Contract */
	case 6: // STATE 1 - TokenLoss.pml:226 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("Contract:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 2 - TokenLoss.pml:228 - [((i<2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)_this)->i<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 3 - TokenLoss.pml:229 - [balanceX[i] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.balanceX[ Index(((P1 *)_this)->i, 2) ];
		now.balanceX[ Index(((P1 *)_this)->i, 2) ] = 0;
#ifdef VAR_RANGES
		logval("balanceX[Contract:i]", now.balanceX[ Index(((P1 *)_this)->i, 2) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 4 - TokenLoss.pml:230 - [balanceY[i] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = now.balanceY[ Index(((P1 *)_this)->i, 2) ];
		now.balanceY[ Index(((P1 *)_this)->i, 2) ] = 0;
#ifdef VAR_RANGES
		logval("balanceY[Contract:i]", now.balanceY[ Index(((P1 *)_this)->i, 2) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 5 - TokenLoss.pml:231 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("Contract:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 11 - TokenLoss.pml:236 - [i = 0] (0:27:2 - 3)
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("Contract:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: j = 0(27, 12, 27) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->j;
		((P1 *)_this)->j = 0;
#ifdef VAR_RANGES
		logval("Contract:j", ((P1 *)_this)->j);
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[1][28] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 12: // STATE 13 - TokenLoss.pml:239 - [((i<2))] (21:0:1 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((P1 *)_this)->i<2)))
			continue;
		/* merge: j = 0(0, 14, 21) */
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->j;
		((P1 *)_this)->j = 0;
#ifdef VAR_RANGES
		logval("Contract:j", ((P1 *)_this)->j);
#endif
		;
		/* merge: .(goto)(0, 22, 21) */
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 13: // STATE 15 - TokenLoss.pml:242 - [((j<2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (!((((P1 *)_this)->j<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 16 - TokenLoss.pml:243 - [allowanceX[i].Spender[j] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		(trpt+1)->bup.oval = now.allowanceX[ Index(((P1 *)_this)->i, 2) ].Spender[ Index(((P1 *)_this)->j, 2) ];
		now.allowanceX[ Index(((P1 *)_this)->i, 2) ].Spender[ Index(((P1 *)_this)->j, 2) ] = 0;
#ifdef VAR_RANGES
		logval("allowanceX[Contract:i].Spender[Contract:j]", now.allowanceX[ Index(((P1 *)_this)->i, 2) ].Spender[ Index(((P1 *)_this)->j, 2) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 17 - TokenLoss.pml:244 - [allowanceY[i].Spender[j] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.oval = now.allowanceY[ Index(((P1 *)_this)->i, 2) ].Spender[ Index(((P1 *)_this)->j, 2) ];
		now.allowanceY[ Index(((P1 *)_this)->i, 2) ].Spender[ Index(((P1 *)_this)->j, 2) ] = 0;
#ifdef VAR_RANGES
		logval("allowanceY[Contract:i].Spender[Contract:j]", now.allowanceY[ Index(((P1 *)_this)->i, 2) ].Spender[ Index(((P1 *)_this)->j, 2) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 18 - TokenLoss.pml:245 - [j = (j+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->j;
		((P1 *)_this)->j = (((P1 *)_this)->j+1);
#ifdef VAR_RANGES
		logval("Contract:j", ((P1 *)_this)->j);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 24 - TokenLoss.pml:248 - [i = (i+1)] (0:27:1 - 3)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("Contract:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 28, 27) */
		reached[1][28] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 18: // STATE 30 - TokenLoss.pml:253 - [balanceY[addr] = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = now.balanceY[ Index(((P1 *)_this)->addr, 2) ];
		now.balanceY[ Index(((P1 *)_this)->addr, 2) ] = 1;
#ifdef VAR_RANGES
		logval("balanceY[Contract:addr]", now.balanceY[ Index(((P1 *)_this)->addr, 2) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 31 - TokenLoss.pml:258 - [msg_method = -(1)] (0:126:8 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.ovals = grab_ints(8);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->msg_method;
		((P1 *)_this)->msg_method =  -(1);
#ifdef VAR_RANGES
		logval("Contract:msg_method", ((P1 *)_this)->msg_method);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: msg_method */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->msg_method = 0;
		/* merge: msg_sender = -(1)(126, 32, 126) */
		reached[1][32] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->msg_sender;
		((P1 *)_this)->msg_sender =  -(1);
#ifdef VAR_RANGES
		logval("Contract:msg_sender", ((P1 *)_this)->msg_sender);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: msg_sender */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->msg_sender = 0;
		/* merge: msg_receiver = -(1)(126, 33, 126) */
		reached[1][33] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->msg_receiver;
		((P1 *)_this)->msg_receiver =  -(1);
#ifdef VAR_RANGES
		logval("Contract:msg_receiver", ((P1 *)_this)->msg_receiver);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: msg_receiver */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->msg_receiver = 0;
		/* merge: msg_spender = -(1)(126, 34, 126) */
		reached[1][34] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->msg_spender;
		((P1 *)_this)->msg_spender =  -(1);
#ifdef VAR_RANGES
		logval("Contract:msg_spender", ((P1 *)_this)->msg_spender);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: msg_spender */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->msg_spender = 0;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 20: // STATE 35 - TokenLoss.pml:265 - [channel?msg_method,msg_sender,msg_receiver,msg_spender] (0:0:4 - 1)
		reached[1][35] = 1;
		if (boq != ((P1 *)_this)->channel) continue;
		if (q_len(((P1 *)_this)->channel) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->msg_method;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->msg_sender;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->msg_receiver;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->msg_spender;
		;
		((P1 *)_this)->msg_method = qrecv(((P1 *)_this)->channel, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("Contract:msg_method", ((P1 *)_this)->msg_method);
#endif
		;
		((P1 *)_this)->msg_sender = qrecv(((P1 *)_this)->channel, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Contract:msg_sender", ((P1 *)_this)->msg_sender);
#endif
		;
		((P1 *)_this)->msg_receiver = qrecv(((P1 *)_this)->channel, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Contract:msg_receiver", ((P1 *)_this)->msg_receiver);
#endif
		;
		((P1 *)_this)->msg_spender = qrecv(((P1 *)_this)->channel, XX-1, 3, 1);
#ifdef VAR_RANGES
		logval("Contract:msg_spender", ((P1 *)_this)->msg_spender);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P1 *)_this)->channel);
			sprintf(simtmp, "%d", ((P1 *)_this)->msg_method); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P1 *)_this)->msg_sender); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P1 *)_this)->msg_receiver); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P1 *)_this)->msg_spender); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(((P1 *)_this)->channel))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 21: // STATE 36 - TokenLoss.pml:268 - [((msg_method==0))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		if (!((((P1 *)_this)->msg_method==0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: msg_method */  (trpt+1)->bup.oval = ((P1 *)_this)->msg_method;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->msg_method = 0;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 37 - TokenLoss.pml:25 - [balanceX[msg_sender] = 1] (0:126:2 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.balanceX[ Index(((P1 *)_this)->msg_sender, 2) ];
		now.balanceX[ Index(((P1 *)_this)->msg_sender, 2) ] = 1;
#ifdef VAR_RANGES
		logval("balanceX[Contract:msg_sender]", now.balanceX[ Index(((P1 *)_this)->msg_sender, 2) ]);
#endif
		;
		/* merge: balanceY[msg_sender] = 1(126, 38, 126) */
		reached[1][38] = 1;
		(trpt+1)->bup.ovals[1] = now.balanceY[ Index(((P1 *)_this)->msg_sender, 2) ];
		now.balanceY[ Index(((P1 *)_this)->msg_sender, 2) ] = 1;
#ifdef VAR_RANGES
		logval("balanceY[Contract:msg_sender]", now.balanceY[ Index(((P1 *)_this)->msg_sender, 2) ]);
#endif
		;
		/* merge: printf('[DBG]: User %d initialization\\n',msg_sender)(126, 40, 126) */
		reached[1][40] = 1;
		Printf("[DBG]: User %d initialization\n", ((P1 *)_this)->msg_sender);
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 23: // STATE 124 - TokenLoss.pml:302 - [.(goto)] (0:126:0 - 7)
		IfNotBlocked
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 24: // STATE 41 - TokenLoss.pml:272 - [((msg_method==1))] (52:0:1 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		if (!((((P1 *)_this)->msg_method==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: msg_method */  (trpt+1)->bup.oval = ((P1 *)_this)->msg_method;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->msg_method = 0;
		/* merge: printf('[DBG]: call approveX(msg_sender:%d, msg_spender:%d, 1)\\n',msg_sender,msg_sender,msg_spender)(0, 42, 52) */
		reached[1][42] = 1;
		Printf("[DBG]: call approveX(msg_sender:%d, msg_spender:%d, 1)\n", ((P1 *)_this)->msg_sender, ((P1 *)_this)->msg_sender, ((P1 *)_this)->msg_spender);
		_m = 3; goto P999; /* 1 */
	case 25: // STATE 43 - TokenLoss.pml:33 - [(((allowanceX[msg_sender].Spender[msg_spender]+1)<=balanceX[msg_sender]))] (126:0:3 - 1)
		IfNotBlocked
		reached[1][43] = 1;
		if (!(((now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[ Index(((P1 *)_this)->msg_spender, 2) ]+1)<=now.balanceX[ Index(((P1 *)_this)->msg_sender, 2) ])))
			continue;
		/* merge: allowanceX[msg_sender].Spender[msg_spender] = (allowanceX[msg_sender].Spender[msg_spender]+1)(126, 44, 126) */
		reached[1][44] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[ Index(((P1 *)_this)->msg_spender, 2) ];
		now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[ Index(((P1 *)_this)->msg_spender, 2) ] = (now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[ Index(((P1 *)_this)->msg_spender, 2) ]+1);
#ifdef VAR_RANGES
		logval("allowanceX[Contract:msg_sender].Spender[Contract:msg_spender]", now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[ Index(((P1 *)_this)->msg_spender, 2) ]);
#endif
		;
		/* merge: balanceX[msg_sender] = (balanceX[msg_sender]-1)(126, 45, 126) */
		reached[1][45] = 1;
		(trpt+1)->bup.ovals[1] = now.balanceX[ Index(((P1 *)_this)->msg_sender, 2) ];
		now.balanceX[ Index(((P1 *)_this)->msg_sender, 2) ] = (now.balanceX[ Index(((P1 *)_this)->msg_sender, 2) ]-1);
#ifdef VAR_RANGES
		logval("balanceX[Contract:msg_sender]", now.balanceX[ Index(((P1 *)_this)->msg_sender, 2) ]);
#endif
		;
		/* merge: balanceX[msg_spender] = (balanceX[msg_spender]+1)(126, 46, 126) */
		reached[1][46] = 1;
		(trpt+1)->bup.ovals[2] = now.balanceX[ Index(((P1 *)_this)->msg_spender, 2) ];
		now.balanceX[ Index(((P1 *)_this)->msg_spender, 2) ] = (now.balanceX[ Index(((P1 *)_this)->msg_spender, 2) ]+1);
#ifdef VAR_RANGES
		logval("balanceX[Contract:msg_spender]", now.balanceX[ Index(((P1 *)_this)->msg_spender, 2) ]);
#endif
		;
		/* merge: printf('[DBG]: approveX(msg_sender:%d, msg_spender:%d, 1)\\n',msg_sender,msg_sender,msg_spender)(126, 47, 126) */
		reached[1][47] = 1;
		Printf("[DBG]: approveX(msg_sender:%d, msg_spender:%d, 1)\n", ((P1 *)_this)->msg_sender, ((P1 *)_this)->msg_sender, ((P1 *)_this)->msg_spender);
		/* merge: .(goto)(126, 51, 126) */
		reached[1][51] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 26: // STATE 51 - TokenLoss.pml:41 - [.(goto)] (0:126:0 - 2)
		IfNotBlocked
		reached[1][51] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 27: // STATE 49 - TokenLoss.pml:38 - [(1)] (126:0:0 - 1)
		IfNotBlocked
		reached[1][49] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(126, 51, 126) */
		reached[1][51] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 28: // STATE 53 - TokenLoss.pml:277 - [((msg_method==2))] (62:0:1 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		if (!((((P1 *)_this)->msg_method==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: msg_method */  (trpt+1)->bup.oval = ((P1 *)_this)->msg_method;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->msg_method = 0;
		/* merge: printf('[DBG]: call transferFromX(msg_sender:%d, msg_receiver:%d, 1)\\n',msg_sender,msg_receiver)(0, 54, 62) */
		reached[1][54] = 1;
		Printf("[DBG]: call transferFromX(msg_sender:%d, msg_receiver:%d, 1)\n", ((P1 *)_this)->msg_sender, ((P1 *)_this)->msg_receiver);
		_m = 3; goto P999; /* 1 */
	case 29: // STATE 55 - TokenLoss.pml:48 - [((allowanceX[msg_sender].Spender[0]>=1))] (126:0:1 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		if (!((now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[0]>=1)))
			continue;
		/* merge: allowanceX[msg_sender].Spender[0] = (allowanceX[msg_sender].Spender[0]-1)(126, 56, 126) */
		reached[1][56] = 1;
		(trpt+1)->bup.oval = now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[0];
		now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[0] = (now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[0]-1);
#ifdef VAR_RANGES
		logval("allowanceX[Contract:msg_sender].Spender[0]", now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[0]);
#endif
		;
		/* merge: printf('[DBG]: transferFromX(msg_sender:%d, msg_receiver:%d, 1)\\n',msg_sender,msg_receiver)(126, 57, 126) */
		reached[1][57] = 1;
		Printf("[DBG]: transferFromX(msg_sender:%d, msg_receiver:%d, 1)\n", ((P1 *)_this)->msg_sender, ((P1 *)_this)->msg_receiver);
		/* merge: .(goto)(126, 61, 126) */
		reached[1][61] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 30: // STATE 61 - TokenLoss.pml:55 - [.(goto)] (0:126:0 - 2)
		IfNotBlocked
		reached[1][61] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 31: // STATE 59 - TokenLoss.pml:53 - [(1)] (126:0:0 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(126, 61, 126) */
		reached[1][61] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 32: // STATE 63 - TokenLoss.pml:281 - [((msg_method==3))] (73:0:1 - 1)
		IfNotBlocked
		reached[1][63] = 1;
		if (!((((P1 *)_this)->msg_method==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: msg_method */  (trpt+1)->bup.oval = ((P1 *)_this)->msg_method;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->msg_method = 0;
		/* merge: printf('[DBG]: call transferX(msg_sender:%d, msg_receiver:%d, 1)\\n',msg_sender,msg_receiver)(0, 64, 73) */
		reached[1][64] = 1;
		Printf("[DBG]: call transferX(msg_sender:%d, msg_receiver:%d, 1)\n", ((P1 *)_this)->msg_sender, ((P1 *)_this)->msg_receiver);
		_m = 3; goto P999; /* 1 */
	case 33: // STATE 65 - TokenLoss.pml:61 - [((balanceX[msg_sender]>=1))] (126:0:2 - 1)
		IfNotBlocked
		reached[1][65] = 1;
		if (!((now.balanceX[ Index(((P1 *)_this)->msg_sender, 2) ]>=1)))
			continue;
		/* merge: balanceX[msg_sender] = (balanceX[msg_sender]-1)(126, 66, 126) */
		reached[1][66] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.balanceX[ Index(((P1 *)_this)->msg_sender, 2) ];
		now.balanceX[ Index(((P1 *)_this)->msg_sender, 2) ] = (now.balanceX[ Index(((P1 *)_this)->msg_sender, 2) ]-1);
#ifdef VAR_RANGES
		logval("balanceX[Contract:msg_sender]", now.balanceX[ Index(((P1 *)_this)->msg_sender, 2) ]);
#endif
		;
		/* merge: balanceX[msg_receiver] = (balanceX[msg_receiver]+1)(126, 67, 126) */
		reached[1][67] = 1;
		(trpt+1)->bup.ovals[1] = now.balanceX[ Index(((P1 *)_this)->msg_receiver, 2) ];
		now.balanceX[ Index(((P1 *)_this)->msg_receiver, 2) ] = (now.balanceX[ Index(((P1 *)_this)->msg_receiver, 2) ]+1);
#ifdef VAR_RANGES
		logval("balanceX[Contract:msg_receiver]", now.balanceX[ Index(((P1 *)_this)->msg_receiver, 2) ]);
#endif
		;
		/* merge: printf('[DBG]: transferX(msg_sender:%d, msg_receiver:%d, 1)\\n',msg_sender,msg_receiver)(126, 68, 126) */
		reached[1][68] = 1;
		Printf("[DBG]: transferX(msg_sender:%d, msg_receiver:%d, 1)\n", ((P1 *)_this)->msg_sender, ((P1 *)_this)->msg_receiver);
		/* merge: .(goto)(126, 72, 126) */
		reached[1][72] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 34: // STATE 72 - TokenLoss.pml:67 - [.(goto)] (0:126:0 - 2)
		IfNotBlocked
		reached[1][72] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 35: // STATE 70 - TokenLoss.pml:65 - [(1)] (126:0:0 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(126, 72, 126) */
		reached[1][72] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 36: // STATE 74 - TokenLoss.pml:286 - [((msg_method==4))] (84:0:1 - 1)
		IfNotBlocked
		reached[1][74] = 1;
		if (!((((P1 *)_this)->msg_method==4)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: msg_method */  (trpt+1)->bup.oval = ((P1 *)_this)->msg_method;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->msg_method = 0;
		/* merge: printf('[DBG]: call transferY(msg_sender:%d, msg_receiver:%d, 1)\\n',msg_sender,msg_receiver)(0, 75, 84) */
		reached[1][75] = 1;
		Printf("[DBG]: call transferY(msg_sender:%d, msg_receiver:%d, 1)\n", ((P1 *)_this)->msg_sender, ((P1 *)_this)->msg_receiver);
		_m = 3; goto P999; /* 1 */
	case 37: // STATE 76 - TokenLoss.pml:73 - [((balanceY[msg_sender]>=1))] (126:0:2 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		if (!((now.balanceY[ Index(((P1 *)_this)->msg_sender, 2) ]>=1)))
			continue;
		/* merge: balanceY[msg_sender] = (balanceY[msg_sender]-1)(126, 77, 126) */
		reached[1][77] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.balanceY[ Index(((P1 *)_this)->msg_sender, 2) ];
		now.balanceY[ Index(((P1 *)_this)->msg_sender, 2) ] = (now.balanceY[ Index(((P1 *)_this)->msg_sender, 2) ]-1);
#ifdef VAR_RANGES
		logval("balanceY[Contract:msg_sender]", now.balanceY[ Index(((P1 *)_this)->msg_sender, 2) ]);
#endif
		;
		/* merge: balanceY[msg_receiver] = (balanceY[msg_receiver]+1)(126, 78, 126) */
		reached[1][78] = 1;
		(trpt+1)->bup.ovals[1] = now.balanceY[ Index(((P1 *)_this)->msg_receiver, 2) ];
		now.balanceY[ Index(((P1 *)_this)->msg_receiver, 2) ] = (now.balanceY[ Index(((P1 *)_this)->msg_receiver, 2) ]+1);
#ifdef VAR_RANGES
		logval("balanceY[Contract:msg_receiver]", now.balanceY[ Index(((P1 *)_this)->msg_receiver, 2) ]);
#endif
		;
		/* merge: printf('[DBG]: transferY(msg_sender:%d, msg_receiver:%d, 1)\\n',msg_sender,msg_receiver)(126, 79, 126) */
		reached[1][79] = 1;
		Printf("[DBG]: transferY(msg_sender:%d, msg_receiver:%d, 1)\n", ((P1 *)_this)->msg_sender, ((P1 *)_this)->msg_receiver);
		/* merge: .(goto)(126, 83, 126) */
		reached[1][83] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 38: // STATE 83 - TokenLoss.pml:79 - [.(goto)] (0:126:0 - 2)
		IfNotBlocked
		reached[1][83] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 39: // STATE 81 - TokenLoss.pml:77 - [(1)] (126:0:0 - 1)
		IfNotBlocked
		reached[1][81] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(126, 83, 126) */
		reached[1][83] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 40: // STATE 85 - TokenLoss.pml:291 - [((msg_method==5))] (120:0:1 - 1)
		IfNotBlocked
		reached[1][85] = 1;
		if (!((((P1 *)_this)->msg_method==5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: msg_method */  (trpt+1)->bup.oval = ((P1 *)_this)->msg_method;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->msg_method = 0;
		/* merge: printf('[DBG]: call swapXY(msg_sender:%d, 1, 0, 0, 1, msg_receiver:%d)\\n',msg_sender,msg_receiver)(0, 86, 120) */
		reached[1][86] = 1;
		Printf("[DBG]: call swapXY(msg_sender:%d, 1, 0, 0, 1, msg_receiver:%d)\n", ((P1 *)_this)->msg_sender, ((P1 *)_this)->msg_receiver);
		_m = 3; goto P999; /* 1 */
	case 41: // STATE 87 - TokenLoss.pml:86 - [((((0>0)&&(0<=balanceX[0]))||((1>0)&&(1<=balanceY[0]))))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][87] = 1;
		if (!((((0>0)&&(0<=now.balanceX[0]))||((1>0)&&(1<=now.balanceY[0])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 88 - TokenLoss.pml:88 - [((allowanceX[msg_sender].Spender[0]>=1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][88] = 1;
		if (!((now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[0]>=1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 89 - TokenLoss.pml:48 - [((allowanceX[msg_sender].Spender[0]>=1))] (110:0:1 - 1)
		IfNotBlocked
		reached[1][89] = 1;
		if (!((now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[0]>=1)))
			continue;
		/* merge: allowanceX[msg_sender].Spender[0] = (allowanceX[msg_sender].Spender[0]-1)(110, 90, 110) */
		reached[1][90] = 1;
		(trpt+1)->bup.oval = now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[0];
		now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[0] = (now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[0]-1);
#ifdef VAR_RANGES
		logval("allowanceX[Contract:msg_sender].Spender[0]", now.allowanceX[ Index(((P1 *)_this)->msg_sender, 2) ].Spender[0]);
#endif
		;
		/* merge: printf('[DBG]: transferFromX(msg_sender:%d, msg_receiver:%d, 1)\\n',msg_sender,0)(110, 91, 110) */
		reached[1][91] = 1;
		Printf("[DBG]: transferFromX(msg_sender:%d, msg_receiver:%d, 1)\n", ((P1 *)_this)->msg_sender, 0);
		/* merge: .(goto)(0, 95, 110) */
		reached[1][95] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 44: // STATE 97 - TokenLoss.pml:91 - [((1>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][97] = 1;
		if (!((1>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 98 - TokenLoss.pml:73 - [((balanceY[0]>=1))] (126:0:2 - 1)
		IfNotBlocked
		reached[1][98] = 1;
		if (!((now.balanceY[0]>=1)))
			continue;
		/* merge: balanceY[0] = (balanceY[0]-1)(126, 99, 126) */
		reached[1][99] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.balanceY[0];
		now.balanceY[0] = (now.balanceY[0]-1);
#ifdef VAR_RANGES
		logval("balanceY[0]", now.balanceY[0]);
#endif
		;
		/* merge: balanceY[msg_receiver] = (balanceY[msg_receiver]+1)(126, 100, 126) */
		reached[1][100] = 1;
		(trpt+1)->bup.ovals[1] = now.balanceY[ Index(((P1 *)_this)->msg_receiver, 2) ];
		now.balanceY[ Index(((P1 *)_this)->msg_receiver, 2) ] = (now.balanceY[ Index(((P1 *)_this)->msg_receiver, 2) ]+1);
#ifdef VAR_RANGES
		logval("balanceY[Contract:msg_receiver]", now.balanceY[ Index(((P1 *)_this)->msg_receiver, 2) ]);
#endif
		;
		/* merge: printf('[DBG]: transferY(msg_sender:%d, msg_receiver:%d, 1)\\n',0,msg_receiver)(126, 101, 126) */
		reached[1][101] = 1;
		Printf("[DBG]: transferY(msg_sender:%d, msg_receiver:%d, 1)\n", 0, ((P1 *)_this)->msg_receiver);
		/* merge: .(goto)(126, 105, 126) */
		reached[1][105] = 1;
		;
		/* merge: printf('[DBG]: swapXY(msg_sender:%d, 1, 0, 0, 1, msg_receiver:%d)\\n',msg_sender,msg_receiver)(126, 107, 126) */
		reached[1][107] = 1;
		Printf("[DBG]: swapXY(msg_sender:%d, 1, 0, 0, 1, msg_receiver:%d)\n", ((P1 *)_this)->msg_sender, ((P1 *)_this)->msg_receiver);
		/* merge: .(goto)(126, 111, 126) */
		reached[1][111] = 1;
		;
		/* merge: .(goto)(126, 115, 126) */
		reached[1][115] = 1;
		;
		/* merge: .(goto)(126, 119, 126) */
		reached[1][119] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 10 */
	case 46: // STATE 103 - TokenLoss.pml:77 - [(1)] (126:0:0 - 1)
		IfNotBlocked
		reached[1][103] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(126, 105, 126) */
		reached[1][105] = 1;
		;
		/* merge: printf('[DBG]: swapXY(msg_sender:%d, 1, 0, 0, 1, msg_receiver:%d)\\n',msg_sender,msg_receiver)(126, 107, 126) */
		reached[1][107] = 1;
		Printf("[DBG]: swapXY(msg_sender:%d, 1, 0, 0, 1, msg_receiver:%d)\n", ((P1 *)_this)->msg_sender, ((P1 *)_this)->msg_receiver);
		/* merge: .(goto)(126, 111, 126) */
		reached[1][111] = 1;
		;
		/* merge: .(goto)(126, 115, 126) */
		reached[1][115] = 1;
		;
		/* merge: .(goto)(126, 119, 126) */
		reached[1][119] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 47: // STATE 107 - TokenLoss.pml:93 - [printf('[DBG]: swapXY(msg_sender:%d, 1, 0, 0, 1, msg_receiver:%d)\\n',msg_sender,msg_receiver)] (0:126:0 - 3)
		IfNotBlocked
		reached[1][107] = 1;
		Printf("[DBG]: swapXY(msg_sender:%d, 1, 0, 0, 1, msg_receiver:%d)\n", ((P1 *)_this)->msg_sender, ((P1 *)_this)->msg_receiver);
		/* merge: .(goto)(126, 111, 126) */
		reached[1][111] = 1;
		;
		/* merge: .(goto)(126, 115, 126) */
		reached[1][115] = 1;
		;
		/* merge: .(goto)(126, 119, 126) */
		reached[1][119] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 48: // STATE 109 - TokenLoss.pml:94 - [(1)] (126:0:0 - 1)
		IfNotBlocked
		reached[1][109] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(126, 111, 126) */
		reached[1][111] = 1;
		;
		/* merge: .(goto)(126, 115, 126) */
		reached[1][115] = 1;
		;
		/* merge: .(goto)(126, 119, 126) */
		reached[1][119] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 49: // STATE 113 - TokenLoss.pml:96 - [(1)] (126:0:0 - 1)
		IfNotBlocked
		reached[1][113] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(126, 115, 126) */
		reached[1][115] = 1;
		;
		/* merge: .(goto)(126, 119, 126) */
		reached[1][119] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 50: // STATE 119 - TokenLoss.pml:101 - [.(goto)] (0:126:0 - 6)
		IfNotBlocked
		reached[1][119] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 51: // STATE 117 - TokenLoss.pml:99 - [(1)] (126:0:0 - 1)
		IfNotBlocked
		reached[1][117] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(126, 119, 126) */
		reached[1][119] = 1;
		;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 52: // STATE 122 - TokenLoss.pml:297 - [(1)] (126:0:0 - 1)
		IfNotBlocked
		reached[1][122] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(126, 124, 126) */
		reached[1][124] = 1;
		;
		/* merge: .(goto)(0, 127, 126) */
		reached[1][127] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 53: // STATE 129 - TokenLoss.pml:304 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][129] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC User */
	case 54: // STATE 1 - TokenLoss.pml:132 - [channel!msg_method,msg_sender,msg_receiver,msg_spender] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_len(((P0 *)_this)->channel))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->channel);
		sprintf(simtmp, "%d", ((P0 *)_this)->msg_method); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->msg_sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->msg_receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->msg_spender); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->channel, 0, ((P0 *)_this)->msg_method, ((P0 *)_this)->msg_sender, ((P0 *)_this)->msg_receiver, ((P0 *)_this)->msg_spender, 4);
		{ boq = ((P0 *)_this)->channel; };
		_m = 2; goto P999; /* 0 */
	case 55: // STATE 2 - TokenLoss.pml:138 - [(((balanceX[1]+balanceY[1])<2))] (45:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!(((now.balanceX[1]+now.balanceY[1])<2)))
			continue;
		/* merge: deposited_flag = 1(0, 3, 45) */
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.deposited_flag);
		now.deposited_flag = 1;
#ifdef VAR_RANGES
		logval("deposited_flag", ((int)now.deposited_flag));
#endif
		;
		/* merge: .(goto)(0, 7, 45) */
		reached[0][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 56: // STATE 8 - TokenLoss.pml:144 - [(((deposited_flag==0)||(count_1<3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!(((((int)now.deposited_flag)==0)||(((P0 *)_this)->count_1<3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 9 - TokenLoss.pml:146 - [msg_method = 1] (0:13:4 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->msg_method;
		((P0 *)_this)->msg_method = 1;
#ifdef VAR_RANGES
		logval("User:msg_method", ((P0 *)_this)->msg_method);
#endif
		;
		/* merge: msg_sender = addr(13, 10, 13) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->msg_sender;
		((P0 *)_this)->msg_sender = ((P0 *)_this)->addr;
#ifdef VAR_RANGES
		logval("User:msg_sender", ((P0 *)_this)->msg_sender);
#endif
		;
		/* merge: msg_receiver = -(1)(13, 11, 13) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->msg_receiver;
		((P0 *)_this)->msg_receiver =  -(1);
#ifdef VAR_RANGES
		logval("User:msg_receiver", ((P0 *)_this)->msg_receiver);
#endif
		;
		/* merge: msg_spender = 0(13, 12, 13) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->msg_spender;
		((P0 *)_this)->msg_spender = 0;
#ifdef VAR_RANGES
		logval("User:msg_spender", ((P0 *)_this)->msg_spender);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 58: // STATE 13 - TokenLoss.pml:150 - [channel!msg_method,msg_sender,msg_receiver,msg_spender] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (q_len(((P0 *)_this)->channel))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->channel);
		sprintf(simtmp, "%d", ((P0 *)_this)->msg_method); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->msg_sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->msg_receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->msg_spender); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->channel, 0, ((P0 *)_this)->msg_method, ((P0 *)_this)->msg_sender, ((P0 *)_this)->msg_receiver, ((P0 *)_this)->msg_spender, 4);
		{ boq = ((P0 *)_this)->channel; };
		_m = 2; goto P999; /* 0 */
	case 59: // STATE 14 - TokenLoss.pml:152 - [((deposited_flag==1))] (51:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!((((int)now.deposited_flag)==1)))
			continue;
		/* merge: count_1 = (count_1+1)(0, 15, 51) */
		reached[0][15] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->count_1;
		((P0 *)_this)->count_1 = (((P0 *)_this)->count_1+1);
#ifdef VAR_RANGES
		logval("User:count_1", ((P0 *)_this)->count_1);
#endif
		;
		/* merge: .(goto)(0, 19, 51) */
		reached[0][19] = 1;
		;
		/* merge: .(goto)(0, 46, 51) */
		reached[0][46] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 60: // STATE 21 - TokenLoss.pml:157 - [(((deposited_flag==0)||(count_2<3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		if (!(((((int)now.deposited_flag)==0)||(((P0 *)_this)->count_2<3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 22 - TokenLoss.pml:159 - [msg_method = 3] (0:26:4 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->msg_method;
		((P0 *)_this)->msg_method = 3;
#ifdef VAR_RANGES
		logval("User:msg_method", ((P0 *)_this)->msg_method);
#endif
		;
		/* merge: msg_sender = addr(26, 23, 26) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->msg_sender;
		((P0 *)_this)->msg_sender = ((P0 *)_this)->addr;
#ifdef VAR_RANGES
		logval("User:msg_sender", ((P0 *)_this)->msg_sender);
#endif
		;
		/* merge: msg_receiver = 0(26, 24, 26) */
		reached[0][24] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->msg_receiver;
		((P0 *)_this)->msg_receiver = 0;
#ifdef VAR_RANGES
		logval("User:msg_receiver", ((P0 *)_this)->msg_receiver);
#endif
		;
		/* merge: msg_spender = -(1)(26, 25, 26) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->msg_spender;
		((P0 *)_this)->msg_spender =  -(1);
#ifdef VAR_RANGES
		logval("User:msg_spender", ((P0 *)_this)->msg_spender);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 62: // STATE 26 - TokenLoss.pml:163 - [channel!msg_method,msg_sender,msg_receiver,msg_spender] (0:0:0 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		if (q_len(((P0 *)_this)->channel))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->channel);
		sprintf(simtmp, "%d", ((P0 *)_this)->msg_method); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->msg_sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->msg_receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->msg_spender); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->channel, 0, ((P0 *)_this)->msg_method, ((P0 *)_this)->msg_sender, ((P0 *)_this)->msg_receiver, ((P0 *)_this)->msg_spender, 4);
		{ boq = ((P0 *)_this)->channel; };
		_m = 2; goto P999; /* 0 */
	case 63: // STATE 27 - TokenLoss.pml:165 - [((deposited_flag==1))] (51:0:1 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (!((((int)now.deposited_flag)==1)))
			continue;
		/* merge: count_2 = (count_2+1)(0, 28, 51) */
		reached[0][28] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->count_2;
		((P0 *)_this)->count_2 = (((P0 *)_this)->count_2+1);
#ifdef VAR_RANGES
		logval("User:count_2", ((P0 *)_this)->count_2);
#endif
		;
		/* merge: .(goto)(0, 32, 51) */
		reached[0][32] = 1;
		;
		/* merge: .(goto)(0, 46, 51) */
		reached[0][46] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 64: // STATE 34 - TokenLoss.pml:183 - [(((deposited_flag==0)||(count_4<3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		if (!(((((int)now.deposited_flag)==0)||(((P0 *)_this)->count_4<3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 35 - TokenLoss.pml:185 - [msg_method = 5] (0:39:4 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->msg_method;
		((P0 *)_this)->msg_method = 5;
#ifdef VAR_RANGES
		logval("User:msg_method", ((P0 *)_this)->msg_method);
#endif
		;
		/* merge: msg_sender = addr(39, 36, 39) */
		reached[0][36] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->msg_sender;
		((P0 *)_this)->msg_sender = ((P0 *)_this)->addr;
#ifdef VAR_RANGES
		logval("User:msg_sender", ((P0 *)_this)->msg_sender);
#endif
		;
		/* merge: msg_receiver = addr(39, 37, 39) */
		reached[0][37] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->msg_receiver;
		((P0 *)_this)->msg_receiver = ((P0 *)_this)->addr;
#ifdef VAR_RANGES
		logval("User:msg_receiver", ((P0 *)_this)->msg_receiver);
#endif
		;
		/* merge: msg_spender = -(1)(39, 38, 39) */
		reached[0][38] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->msg_spender;
		((P0 *)_this)->msg_spender =  -(1);
#ifdef VAR_RANGES
		logval("User:msg_spender", ((P0 *)_this)->msg_spender);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 66: // STATE 39 - TokenLoss.pml:189 - [channel!msg_method,msg_sender,msg_receiver,msg_spender] (0:0:0 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		if (q_len(((P0 *)_this)->channel))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)_this)->channel);
		sprintf(simtmp, "%d", ((P0 *)_this)->msg_method); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->msg_sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->msg_receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->msg_spender); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)_this)->channel, 0, ((P0 *)_this)->msg_method, ((P0 *)_this)->msg_sender, ((P0 *)_this)->msg_receiver, ((P0 *)_this)->msg_spender, 4);
		{ boq = ((P0 *)_this)->channel; };
		_m = 2; goto P999; /* 0 */
	case 67: // STATE 40 - TokenLoss.pml:191 - [((deposited_flag==1))] (51:0:1 - 1)
		IfNotBlocked
		reached[0][40] = 1;
		if (!((((int)now.deposited_flag)==1)))
			continue;
		/* merge: count_4 = (count_4+1)(0, 41, 51) */
		reached[0][41] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->count_4;
		((P0 *)_this)->count_4 = (((P0 *)_this)->count_4+1);
#ifdef VAR_RANGES
		logval("User:count_4", ((P0 *)_this)->count_4);
#endif
		;
		/* merge: .(goto)(0, 43, 51) */
		reached[0][43] = 1;
		;
		/* merge: .(goto)(0, 46, 51) */
		reached[0][46] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 68: // STATE 47 - TokenLoss.pml:198 - [((((count_1==3)&&(count_2==3))&&(count_4==3)))] (54:0:0 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (!((((((P0 *)_this)->count_1==3)&&(((P0 *)_this)->count_2==3))&&(((P0 *)_this)->count_4==3))))
			continue;
		/* merge: assert(((balanceX[1]+balanceY[1])==2))(54, 48, 54) */
		reached[0][48] = 1;
		spin_assert(((now.balanceX[1]+now.balanceY[1])==2), "((balanceX[1]+balanceY[1])==2)", II, tt, t);
		/* merge: .(goto)(54, 52, 54) */
		reached[0][52] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 69: // STATE 52 - TokenLoss.pml:203 - [.(goto)] (0:54:0 - 2)
		IfNotBlocked
		reached[0][52] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 70: // STATE 50 - TokenLoss.pml:200 - [(1)] (54:0:0 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(54, 52, 54) */
		reached[0][52] = 1;
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[0][55] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 71: // STATE 57 - TokenLoss.pml:206 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][57] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

