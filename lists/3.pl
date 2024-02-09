element_at(H, [H | _], 1).
element_at(X, [_ | T], N) :-
    M is N - 1,
    element_at(X, T, M).