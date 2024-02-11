suff([], Z, Z).
suff([H | T1], [H | T2], Z) :-
    suff(T1, T2, Z).

my_flatten([], []).
my_flatten([H | T1], [H | T2]) :-
    \+ is_list(H),
    my_flatten(T1, T2).
my_flatten([H | T], X) :-
    my_flatten(H, Y),
    suff(Y, X, Z),
    my_flatten(Z, T).