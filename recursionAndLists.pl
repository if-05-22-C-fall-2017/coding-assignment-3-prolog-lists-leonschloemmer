head(Head, [Head| _]).
tail(Tail, [_ |Tail]).

prepend(NewElement, Tail, [NewElement | Tail]).

addElement([], L, L).
addElement([H|T], L, [H|ExtendedTail]) :- addElement(T, L, ExtendedTail).

hasLength([], 0).
hasLength([_ | Tail], L) :- hasLength(Tail, N), L is N+.

remove(E, [E | T], T).
remove(E, [Head | Tail], [Head | RemovedTail]) :- remove(E, Tail, RemovedTail).