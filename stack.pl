empty_stack([]).
empty([]).
push(E,S,[E|S]).
pop(E,[E|S],S).
top(E,[E|_]).

s_display([]).
s_display([E|S]) :-write(" "),write(E),s_display(S).
