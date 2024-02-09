my_last(H, [H | []]).
my_last(X, [_ | T]) :-
    my_last(X, T).