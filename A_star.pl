edge(a,b,1).
edge(a,c,4).
edge(b,d,2).
edge(b,e,5).
edge(c,f,1).
edge(d,g,7).
edge(e,g,2).
edge(f,g,3).

h(a,7).
h(b,6).
h(c,4).
h(d,4).
h(e,2).
h(f,2).
h(g,0).

a_star(Start, Goal, Path, Cost) :-
	h(Start, H),
	a_star_search([(H, Start, [Start], 0)], Goal, Path, Cost).

a_star_search([(_, Goal, Path, Cost)|_], Goal, Path, Cost).

a_star_search([(_, Node, Path, G)|Rest], Goal, FinalPath, FinalCost) :-
    findall(
        (F, Next, NewPath, NewG),
        (
            edge(Node, Next, StepCost),
            \+ member(Next, Path),
            NewG is G + StepCost,
            h(Next, H),
            F is NewG + H,
            append(Path, [Next], NewPath)
        ),
        Children
    ),
    append(Rest, Children, Queue),
    sort(Queue, SortedQueue),
    a_star_search(SortedQueue, Goal, FinalPath, FinalCost).