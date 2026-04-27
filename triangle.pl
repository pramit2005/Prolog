triangle(X,Y,Z):-X1 is Y+Z,Y1 is Z+X,Z1 is X+Y,X<X1,Y<Y1,Z<Z1.
iso(X,Y,Z):-triangle(X,Y,Z),X=:=Y;Y=:=Z;Z=:=X.
eqi(X,Y,Z):-triangle(X,Y,Z),X=:=Y,Y=:=Z.
sca(X,Y,Z):-triangle(X,Y,Z),X=\=Y,Y=\=Z.