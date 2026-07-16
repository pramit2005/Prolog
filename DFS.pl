%Edges
edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(c,f).
edge(e,g).
%DFS Traversal
dfs(Start,Goal):-
    dfs_util(Start,Goal,[Start],Path),
    reverse(Path,Result),
    write('Path from '),write(Start),write('to'),write(Goal),write(Result),nl.
%DFS utility predicate
dfs_util(Goal,Goal,Visited,Visited).
dfs_util(Node,Goal,Visited,Path):-
    edge(Node,Next),
    \+ member(Next,Visited),
    dfs_util(Next,Goal,[Next|Visited],Path).