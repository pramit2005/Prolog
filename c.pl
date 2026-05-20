list_length([],0).
list_length([_|T],N):-list_length(T,N1),N is N1+1.
sum([],0).
sum([H|T],X):-sum(T,X1),X is X1+H.
mean([],0).
mean(List,X):-sum(List,Y),list_length(List,Z),X is Y/Z.