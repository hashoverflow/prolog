second_last(H, [H | [_ | []]]).
second_last(X, [_ | T]) :-
    second_last(X, T).