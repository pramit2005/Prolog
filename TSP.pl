distance(a, b, 10). 
distance(a, c, 15). 
distance(a, d, 20). 
distance(b, c, 35). 
distance(b, d, 25). 
distance(c, d, 30). 
% Make distance symmetric 
distance(X, Y, D) :- distance(Y, X, D). 
% Find best route 
tsp(Start, Path, Cost) :- 
 findall(City, distance(Start, City, _), Cities), 
 permutation(Cities, Perm), 
 tsp_cost(Start, Perm, 0, Cost, [Start], Path). 
% Calculate cost of a path 
tsp_cost(Start, [], AccCost, TotalCost, RevPath, Path) :-
 distance(Start, Start, D), % Optional to cycle to start 
 TotalCost is AccCost + D, 
 reverse(RevPath, Path). 
tsp_cost(Start, [Next|Rest], AccCost, TotalCost, RevPath, Path) :-  distance(Start, Next, D), 
 NewCost is AccCost + D, 
 tsp_cost(Next, Rest, NewCost, TotalCost, [Next|RevPath], Path). 