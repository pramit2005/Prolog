%Graph Edges
edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(c,f).
edge(e,g).
%BFS driver
bfs(Start,Goal):-
    bfs_util([[Start]],Goal,Path),
    write('Path from'),write(Start),write('to'),write(Goal),write(':'),write(Path),nl.
%BFS utiity
bfs_util([[Goal|Rest]|_],Goal,Path):-
    reverse([Goal|Rest],Path).
bfs_util([[Current|Rest]|Others],Goal,Path):-
    findall([Next,Current|Rest],
    (edge(Current,Next),\+member(Next,[Current|Rest])),
    NewPaths),
    append(Others,NewPaths,UpdatedQueue),
    bfs_util(UpdatedQueue,Goal,Path).