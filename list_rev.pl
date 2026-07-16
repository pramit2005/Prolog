rev([],[]).
rev([H|T],R):-rev(T,RT),append(RT,[H],R).