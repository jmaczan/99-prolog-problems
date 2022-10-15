/*
P01 (*) Find the last element of a list.
    Example:
    ?- my_last(X,[a,b,c,d]).
    X = d
*/

my_last(X, [X]).
my_last(X, [H|T]) :- my_last(X, T).

/*
P02 (*) Find the last but one element of a list.
*/

last_but_one(X, [X, T]).
last_but_one(X, [H|T]) :- last_but_one(X, T).

/*
P03 (*) Find the K'th element of a list.
    The first element in the list is number 1.
    Example:
    ?- element_at(X,[a,b,c,d,e],3).
*/

element_at(X, [H|T], Index) :- 