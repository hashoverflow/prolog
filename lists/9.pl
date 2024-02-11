pack([H | [H | T1]], [[H | [H | T2]] | T3]) :-
    pack([H | T1], [[H | T2] | T3]).
pack([H | T1], [[H | []] | T2]) :-
    pack(T1, T2).
pack([], []).