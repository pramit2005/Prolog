fibonacci(0,0).
fibonacci(1,1).
fibonacci(N,F):-N>1,N1 is N-1,N2 is N-2,fibonacci(N1,F1),fibonacci(N2,F2),F is F1+F2.

fib_series(0,[0]).
fib_series(N,List):-N>0,N1 is N-1,fib_series(N1,PrevList),fibonacci(N,F), append(PrevList,[F],List).
