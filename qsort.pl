
% クイックソード
qsort([], []).
qsort(XS, YS) :-
    average(XS, Pibot),
    leftlist(Pibot, XS, BeforeLeft),
    rightlist(Pibot, XS, BeforeRight),
    qsort(BeforeLeft, AfterLeft),
    qsort(BeforeRight, AfterRight),
    append(AfterLeft, AfterRight, YS).


% 基準値の決定
average([], 0).
average(XS, Value) :- sum_list(XS, Total), length(XS, Length), Value is Total / Length.


% 内包表記
% YSはXSの中でNより小さい要素のリストである。
% [1,2,3,4,5]の2より小さい要素だけのリストは[1]である。
leftlist(_, [], []).


rightlist(_, [], []).
