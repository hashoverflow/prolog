num_elements(1, [_]).
num_elements(N, [_ | T]) :-
    num_elements(M, T),
    N is M + 1.