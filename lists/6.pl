my_append([H | []], [], H).
my_append([H | T1], [H | T2], R) :-
    my_append(T1, T2, R).

reverse([], []).
reverse(X, [H | T]) :-
    reverse(F, T),
    my_append(X, F, H).

equal([], []).
equal([H | T1], [H | T2]) :-
    equal(T1, T2).

palindrome(L) :-
    reverse(J, L),
    equal(J, L).