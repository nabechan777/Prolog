
trace(A, B, C) :-
    writeln('================='),
    write('A = '), writeln(A),
    write('B = '), writeln(B),
    write('C = '), writeln(C),
    writeln('=================').

% ハノイの塔
hanoi(A, [], []) :- trace(A, [], []), last(A, LastA), append(InitA, [LastA], A), hanoi([], InitA, [LastA|[]]).
hanoi([], B, C) :- trace([], B, C), last(B, LastB), append(InitB, [LastB], B), hanoi(InitB, [], [LastB|C]).
hanoi(A, [], C) :- trace(A, [], C), last(A, LastA), append(InitA, [LastA], A), hanoi([], InitA, [LastA|C]).
hanoi([], [], C) :- trace([], [], C).
