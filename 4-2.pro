lacz_listy([], B, C) :-
    C = B.
lacz_listy([X|A], B, C) :-
	lacz_listy(A, B, C1),
    C = [X|C1].

ostatni_element([X], B) :-
    B = X.
ostatni_element([_|A], B) :-
    ostatni_element(A, B).

prefiks([], _) :-
    true.
prefiks([X|A], [X|B]) :-
    prefiks(A, B).

podlista(A, B) :-
    prefiks(A, B).
podlista(A, [_|B]) :-
    podlista(A, B).

sortuj(A, B) :-
    sortuj_insert([], A, B).
sortuj_insert(A, [], C) :-
	C = A.
sortuj_insert(A, [X|B], C) :-
    sortuj_pass([X|A], C1),
    sortuj_insert(C1, B, C).
sortuj_pass([], []).
sortuj_pass([X], [X]).
sortuj_pass([X, Y|A], B) :-
    X > Y,
    sortuj_pass([X|A], C1),
    B = [Y|C1].
sortuj_pass([X, Y|A], B) :-
    X =< Y,
    sortuj_pass([Y|A], C1),
    B = [X|C1].

podlista2([], _) :-
    true.
podlista2([X|A], [X|B]) :-
    podlista2(A, B).
podlista2(A, [_|B]) :-
    podlista2(A, B).
