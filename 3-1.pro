/* Zadanie A */ 

krawedz(a,b).
krawedz(b,c).
krawedz(b,d).
krawedz(c,e).
krawedz(c,f).
krawedz(d,f).
krawedz(f,e).

/* Zadanie B */ 

sciezka(X,Y) :- krawedz(X,Y); (krawedz(X,Z), sciezka(Z,Y)).

/* Zadanie C */ 

/* sciezka(a,d), sciezka(d,f). */
/* krawedz(X,Y), krawedz(Y,Z), krawedz(Z,f). */
/* sciezka(X,X). */

/* Zadanie C */ 

sciezka_dl(X,Y,N) :- N=1, krawedz(X,Y).
sciezka_dl(X,Y,N) :- N>1, N1 is N - 1, krawedz(X,Z), sciezka_dl(Z,Y,N1).

/* Zadanie E */ 

/* sciezka_dl(X,f,4). */
/* sciezka_dl(a,X,3). */
/* sciezka_dl(X,Y,3). */
/* Nie ma wartości początkowej dla N. N-1 nie do zewaluowania? */

/* Zadanie E */ 

dl_sciezki(X,Y,N) :- krawedz(X,Y), N=1.
dl_sciezki(X,Y,N) :- krawedz(X,Z), dl_sciezki(Z,Y,N1), N is N1 + 1.
