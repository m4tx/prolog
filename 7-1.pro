wygrywa(L, K, X) :-
    member(X, L),
    X >= K.
wygrywa(L, K, X) :-
    member(X, L),
    K1 is K - X,
    not(wygrywa(L, K1, _)).

graj(L, K) :- komp(L, K).

komp(_, K) :-
    K =< 0,
    write("Wygrywa gracz!"), nl.

komp([L1|L], K) :-
    K > 0,
   	(wygrywa([L1|L], K, X); X = L1),
    write("Mój ruch: "),
    write(X), nl,
    K1 is K - X,
    czl(L, K1).

czl(_, K) :-
    K =< 0,
    write("Wygrywam!"), nl.
    
czl(L, K) :-
    K > 0,
    write("Twój ruch?"),
    read(X),
    member(X, L),
    K1 is K - X,
    komp(L, K1).
