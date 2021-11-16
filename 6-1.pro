silnia(N, S) :- silnia(N,1,S).
silnia(0,A,A).
silnia(N,A,S) :- 
    A1 is A * N, 
    N1 is N - 1,
    silnia(N1, A1, S).

fib(N,F) :- fib(0, 1, N, F).
fib(A, _, 0, A).
fib(A, B, N, F) :- 
    A1 is B,
    B1 is A + B,
    N1 is N - 1,
    fib(A1, B1, N1, F).

rev(X, Y) :- rev(X, [], Y).
rev( [], Y, Y).
rev([X | XL], Y, Z) :- rev(XL, [X|Y], Z).

przekatna(M, P) :- przekatna(M, P, 0, []).
przekatna([X|M], P, N, A) :-
    N1 is N + 1,
    wiersz(X, W, N),
    przekatna(M, P, N1, [W|A]).
przekatna([], A, _, B) :- rev(A, B).
wiersz([X|_], X, 0). 
wiersz([_|L], P, N) :-
    N1 is N - 1,
    wiersz(L, P, N1).
    
