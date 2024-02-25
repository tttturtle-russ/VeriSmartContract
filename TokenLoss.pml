#define ContractAddr 0
#define Alice 1

#define MAXUSER 2


ltl liveness {[] (deposited_flag -> <>(balanceX[Alice] + balanceY[Alice] == 2))}
// ltl test {[] (q==1)}

typedef ALLOWANCE{
    int Spender[MAXUSER];
}

short balanceX[MAXUSER];
short balanceY[MAXUSER];

ALLOWANCE allowanceX[MAXUSER];
ALLOWANCE allowanceY[MAXUSER];

bool deposited_flag = false;

// method: 0
inline initializeuUser(sender)
{
    balanceX[sender] = 1;
    balanceY[sender] = 1;
}

// method: 1
inline approveX(sender, spender, amount)
{
    if
        :: (allowanceX[sender].Spender[spender] + amount <= balanceX[sender]) ->
            allowanceX[sender].Spender[spender] = allowanceX[sender].Spender[spender] + amount;
            balanceX[sender] = balanceX[sender] - amount;
            balanceX[spender] = balanceX[spender] + amount;
            printf("[DBG]: approveX(msg_sender:%d, msg_spender:%d, 1)\n", sender, sender, spender);
        :: else -> skip;
    fi;

}


// method: 2
inline transferFromX(sender, receiver, amount)
{
    if
        :: (allowanceX[sender].Spender[ContractAddr] >= amount) ->
            allowanceX[sender].Spender[ContractAddr] = allowanceX[sender].Spender[ContractAddr] - amount;
            // balanceX[sender] = balanceX[sender] - amount;
            // balanceX[receiver] = balanceX[receiver] + amount;
            printf("[DBG]: transferFromX(msg_sender:%d, msg_receiver:%d, 1)\n", sender, receiver);
        :: else -> skip;
    fi;
}

// method: 3
inline transferX(sender, receiver, amount)
{
    if
        :: (balanceX[sender] >= amount) ->
            balanceX[sender] = balanceX[sender] - amount;
            balanceX[receiver] = balanceX[receiver] + amount;
            printf("[DBG]: transferX(msg_sender:%d, msg_receiver:%d, 1)\n", sender, receiver);
        :: else -> skip;
    fi;
}

// method: 4
inline transferY(sender, receiver, amount)
{
    if
        :: (balanceY[sender] >= amount) ->
            balanceY[sender] = balanceY[sender] - amount;
            balanceY[receiver] = balanceY[receiver] + amount;
            printf("[DBG]: transferY(msg_sender:%d, msg_receiver:%d, 1)\n",sender, receiver);
        :: else -> skip;
    fi;
}


// method: 5
inline swapXY(sender, amount0In, amount1In, amount0Out, amount1Out, to)
{
    if
        :: ((amount0Out > 0 && amount0Out <= balanceX[ContractAddr])  || (amount1Out > 0 &&  amount1Out <= balanceY[ContractAddr])) ->
            if
                :: (allowanceX[sender].Spender[ContractAddr] >= amount0In) ->
                    transferFromX(sender, ContractAddr, amount0In);
                    if
                        :: (amount1Out > 0) ->
                            transferY(ContractAddr, to, amount1Out);
                            printf("[DBG]: swapXY(msg_sender:%d, 1, 0, 0, 1, msg_receiver:%d)\n", sender, to);
                        :: else -> skip;
                    fi;
                :: else -> skip;
            fi;

        :: else -> skip;
    fi;
}



proctype User(chan channel; int addr){

    int address = addr;

    int i = 0;
    int j = 0;
    int k = 0;
    int l = 0;


    int m = 0;
    int n = 0;
    int o = 0;
    int p = 0;

    short count_1 = 0;
    short count_2 = 0;
    short count_3 = 0;
    short count_4 = 0;


    short msg_method = 0;
    short msg_sender = addr;
    short msg_receiver = -1;
    short msg_spender = -1;


    channel! msg_method, msg_sender, msg_receiver, msg_spender;

    do
        ::
            atomic{
                if
                    :: (balanceX[Alice] + balanceY[Alice] < 2) ->
                        deposited_flag = true;
                    :: else -> skip;
                fi;

                if
                    ::(deposited_flag == false || count_1 < 3) ->
                        atomic{
                            msg_method = 1;
                            msg_sender = addr;
                            msg_receiver = -1;
                            msg_spender = ContractAddr;
                            channel! msg_method, msg_sender, msg_receiver, msg_spender;
                            if
                                :: (deposited_flag == true) ->
                                    count_1 = count_1 + 1;
                                :: else -> skip;
                            fi;
                        }
                    ::(deposited_flag == false || count_2 < 3) ->
                        atomic{
                            msg_method = 3;
                            msg_sender = addr;
                            msg_receiver = ContractAddr ;
                            msg_spender = -1;
                            channel! msg_method, msg_sender, msg_receiver, msg_spender;
                            if
                                :: (deposited_flag == true) ->
                                    count_2 = count_2 + 1;
                                :: else -> skip;
                            fi;
                        }
                    // // 取出来
                    // :: (deposited_flag == false || count_3 < 3) ->
                    //     atomic{
                    //         msg_method = 3;
                    //         msg_sender = ContractAddr;
                    //         msg_receiver = addr ;
                    //         msg_spender = -1;
                    //         channel! msg_method, msg_sender, msg_receiver, msg_spender;
                    //         if
                    //             :: (deposited_flag == true) ->
                    //                 count_3 = count_3 + 1;
                    //         fi;
                    //     }
                    :: (deposited_flag == false || count_4 < 3) ->
                        atomic{
                            msg_method = 5;
                            msg_sender = addr;
                            msg_receiver = addr;
                            msg_spender = -1;
                            channel! msg_method, msg_sender, msg_receiver, msg_spender;
                            if
                                :: (deposited_flag == true) ->
                                    count_4 = count_4 + 1;
                            fi;
                        }
                fi;

                if
                    :: (count_1 == 3 && count_2 == 3 && count_4 == 3) ->
                        assert(balanceX[Alice] + balanceY[Alice] == 2);
                    :: else -> skip;
                fi;

            }

    od;
}




proctype Contract(chan channel; int addr){

    int address = addr;

    int i = 0;
    int j = 0;
    int k = 0;
    int l = 0;


    int m = 0;
    int n = 0;
    int o = 0;
    int p = 0;

    i = 0;
    do
        :: (i < MAXUSER) ->
            balanceX[i] = 0;
            balanceY[i] = 0;
            i = i + 1;
        :: else -> break;
    od;


    i = 0;
    j = 0;
    do
        :: (i < MAXUSER) ->
            j = 0;
            do
                :: (j < MAXUSER) ->
                    allowanceX[i].Spender[j] = 0;
                    allowanceY[i].Spender[j] = 0;
                    j = j + 1;
                :: else -> break;
            od;
            i = i + 1;
        :: else -> break;
    od;

    // balanceX[addr] = 1;
    balanceY[addr] = 1;



    short msg_method = -1;
    short msg_sender = -1;
    short msg_receiver = -1;
    short msg_spender = -1;

    do
        ::
            atomic{
                channel? msg_method, msg_sender, msg_receiver, msg_spender;

                if
                    :: (msg_method == 0) ->
                        initializeuUser(msg_sender);
                        printf("[DBG]: User %d initialization\n", msg_sender);

                    :: (msg_method == 1) ->
                        printf("[DBG]: call approveX(msg_sender:%d, msg_spender:%d, 1)\n", msg_sender, msg_sender, msg_spender);
                        approveX(msg_sender, msg_spender, 1);


                    :: (msg_method == 2) ->
                        printf("[DBG]: call transferFromX(msg_sender:%d, msg_receiver:%d, 1)\n", msg_sender, msg_receiver);
                        transferFromX(msg_sender, msg_receiver, 1);

                    :: (msg_method == 3) ->
                        printf("[DBG]: call transferX(msg_sender:%d, msg_receiver:%d, 1)\n", msg_sender, msg_receiver);
                        transferX(msg_sender, msg_receiver, 1);


                    :: (msg_method == 4) ->
                        printf("[DBG]: call transferY(msg_sender:%d, msg_receiver:%d, 1)\n", msg_sender, msg_receiver);
                        transferY(msg_sender, msg_receiver, 1);


                    :: (msg_method == 5) ->
                        printf("[DBG]: call swapXY(msg_sender:%d, 1, 0, 0, 1, msg_receiver:%d)\n", msg_sender, msg_receiver);
                        swapXY(msg_sender, 1, 0,0,1, msg_receiver);



                    :: else -> skip;

                fi;

                //printf("[DBG]: receive msg: (method:%d, sender:%d, receiver:%d, spender:%d)", msg_method, msg_sender, msg_receiver, msg_spender);
            }
    od;
}



init
{
    // method, sender, receiver, spender
    chan channel = [0] of {short, short, short, short};
    atomic{
        run Contract(channel, ContractAddr);
    }

    run User(channel, Alice);
}
