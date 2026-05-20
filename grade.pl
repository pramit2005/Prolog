add([],0).
add([H|T],X):-add(T,Y),X is H+Y.
list_length([],0).
list_length([_|T],N):-list_length(T,N1),N is N1+1.
mean(List,M):-add(List,X),list_length(List,Y),M is X/Y.

grade(Marks,'O'):-Marks>=90,Marks=<100.
grade(Marks,'E'):-Marks>=80,Marks<90.
grade(Marks,'A'):-Marks>=70,Marks<80.
grade(Marks,'B'):-Marks>=60,Marks<70.
grade(Marks,'C'):-Marks>=50,Marks<60.
grade(Marks,'D'):-Marks<=40,Marks<50.
grade(Marks,'F'):-Marks<40.

grade_marks(List):- mean(List,Y),grade(Y,Z),write('your grade is: '),write(Z).