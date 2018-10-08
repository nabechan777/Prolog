
% フィボナッチ数列の0番目は1である。
fibonacci(0, 1).
% フィボナッチ数列の1番目は1である。
fibonacci(1, 1).
% フィボナッチ数列のN番目はN-1番目とN-2番目の和である。
% ただしNは0以上の値
fibonacci(N, Value) :-
    N >= 2,
    A is N - 1, B is N - 2,
    fibonacci(A, ValueA), fibonacci(B, ValueB),
    Value is ValueA + ValueB.
