liczba(0).
liczba(s(X)) :- liczba(X).

mniejszy(0, X) :-
    X \== 0,
	true.
mniejszy(s(X), s(Y)) :-
	mniejszy(X, Y).

dodaj(0, Y, Y).
dodaj(s(X), Y, s(Z)) :- dodaj(X, Y, Z).

mnoz(0, B, B).
mnoz(s(A), B, C) :-
    mnoz(A, B, C1),
    dodaj(C1, B, C).
