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
