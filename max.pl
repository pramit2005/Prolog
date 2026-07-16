max([X],X).
max([H|T],M):-max(T,M1),(H>M1 -> M=H;M=M1).