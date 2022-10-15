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

element_at(X, [X|T], 1).
element_at(X, [H|T], K) :- N is K - 1, element_at(X, T, N).

/*
P04 (*) Find the number of elements of a list.
*/

/*
This solution can only verify length, i.e. list_length([1, 2], 2), but cannot calculate the length itself like list_length([1, 2], N) 
*/
list_length([], 0).
list_length([H], 1).
list_length([H|T], N) :- M is N - 1, list_length(T, M).

/*
This solution is able to do both; I think it's because an order of predicates inside the rule.
*/
another_list_length([], 0).
another_list_length([H|T], N) :- another_list_length(T, M), N is M + 1.

