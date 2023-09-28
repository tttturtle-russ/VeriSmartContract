The entrance file is BPool.sol

Initialize steps:
1. Issuer deploy SimpleToken on address addrT0
2. Issuer deploy SimpleToken on address addrT1
3. Issuer deploy BPool on address addrP
4. Issuer transfer 1000 T0 to Alice, Issuer.T0.transfer(Alice,1000)
5. Issuer approve 1000 T0, 1000 T1 to P, Issuer.T0.approve(addrP,1000) Issuer.T1.approve(addrP,1000) 
6. Issuer add 1000T0,1000T1 liquidity to the pool, Issuer.P.bind(T0,1000,1000000000000000000),Issuer.P.bind(T1,1000,1000000000000000000) 
7. Finalize the pool,Issuer.P.finalize()

Normal steps:
1. Alice approve 1000 T0 to P, Alice.T0.approve(addrP,1000)
2. Alice call swap to withdraw T1, Alice.P.swapExactAmountIn(addrT0,1000,addrT1,0,999999999999999999999) .... success

exploit:
1. Alice transfer 1000 T0 to P, Alice.T0.transfer(addrP,1000)
2. Alice call swap to withdraw T1, Alice.P.swapExactAmountIn(addrT0,1000,addrT1,0,999999999999999999999) .... fail
