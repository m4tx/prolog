lacz_listy([], B, C) :-
    C = B.
lacz_listy([X|A], B, C) :-
	lacz_listy(A, B, C1),
    C = [X|C1].

ostatni_element([X], B) :-
    B = X.
ostatni_element([_|A], B) :-
    ostatni_element(A, B).

prefiks([], _).
prefiks([X|A], [X|B]) :-
    prefiks(A, B).

podlista(A, B) :-
    prefiks(A, B).
podlista(A, [_|B]) :-
    podlista(A, B).

insert(X, [], [X]).
insert(X, [X1|L1], [X, X1|L1]):- X=<X1.
insert(X, [X1|L1], [X1|L]):- insert(X, L1, L).
sortuj([], []).
sortuj([X|L], S):- sortuj(L, S1), insert(X, S1, S).

podlista2([], _).
podlista2([A|B], [A|C]) :- podlista2(B, C).
podlista2(A, [_|B]) :- podlista2(A, B).

permutacja(A, B) :- sortuj(A, B).

usun_element([E|L1], E, L1).
usun_element([K|L1], E, [K|L2]) :- usun_element(L1, E, L2), not(K = E).
