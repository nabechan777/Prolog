
% 0の階乗は1である。
factorial(0, 1).
% Nの階乗はN*factorial(N - 1)である。
factorial(N, Value) :-
    N >= 1,
    Pred is N - 1,
    factorial(Pred, PredValue),
    Value is N * PredValue.
