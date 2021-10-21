/* Zadanie B */

collatz(N, X) :-
    mod(N, 2) =:= 0,
    X is N // 2.
collatz(N, X) :-
    mod(N, 2) =:= 1,
    X is 3 * N + 1.

collatz1(A) :-
    A =:= 1,
    write(A), nl.
collatz1(A) :-
    A =\= 1,
    write(A), nl,
    collatz(A, N),
    collatz1(N).

collatz2(A, N) :-
    A =:= 1,
    N = 1.
collatz2(A, N) :-
    A =\= 1,
    collatz(A, X),
    collatz2(X, N1),
    N is N1 + 1.

/* Zadanie C */

binom(_, L, X) :-
    L =:= 0,
    X = 1.
binom(K, L, X) :-
    K =:= L,
    X = 1.
binom(K, L, X) :-
    L =\= 0,
    K =\= L,
    K1 is K - 1,
    L1 is L - 1,
    binom(K1, L, X1),
    binom(K1, L1, X2),
    X is X1 + X2.