compress([], []).
compress([H | [H | T1]], [H | T2]) :-
    compress([H | T1], [H | T2]).
compress([H | T1], [H | T2]) :-
    compress(T1, T2).