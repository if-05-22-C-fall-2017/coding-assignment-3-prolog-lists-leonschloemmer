head(Head, [Head| _]).
tail(Tail, [_ |Tail]).

prepend(NewElement, Tail, [NewElement | Tail]).

addElement([], E, [E]).
addElement([H|T], E, [H|ExtendedTail]) :- addElement(T, E, ExtendedTail).

hasLength([], 0).
hasLength([_ | Tail], L) :- hasLength(Tail, N), L is N+1.

remove(E, [E | T], T).
remove(E, [Head | Tail], [Head | RemovedTail]) :- remove(E, Tail, RemovedTail).