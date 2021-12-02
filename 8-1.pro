split2(Filename, FileNameA, FileNameB) :-
    open(Filename, read, FO),
    open(FileNameA, write, FA),
    open(FileNameB, write, FB),
    (split2a(FO, FA, FB);
        close(FO),
        close(FA),
        close(FB)).

split2a(FO, FA, FB) :-
    get_char(FO, C),
    C \= end_of_file,
    put_char(FA, C),
    split2b(FO, FA, FB).

split2b(FO, FA, FB) :-
    get_char(FO, C),
    C \= end_of_file,
    put_char(FB, C),
    split2a(FO, FA, FB).


join2(Filename, FileNameA, FileNameB) :-
    open(Filename, write, FO),
    open(FileNameA, read, FA),
    open(FileNameB, read, FB),
    (join2a(FO, FA, FB);
        close(FO),
        close(FA),
        close(FB)).

join2a(FO, FA, FB) :-
    get_char(FA, C),
    C \= end_of_file,
    put_char(FO, C),
    join2b(FO, FA, FB).

join2b(FO, FA, FB) :-
    get_char(FB, C),
    C \= end_of_file,
    put_char(FO, C),
    join2a(FO, FA, FB).
