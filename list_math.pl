
% リストの要素数を返す。
count(0, []).
count(Count, [_|Tail]) :- count(TailCount, Tail), Count is TailCount + 1.

% リストの要素の合計を返す。
sum(0, []).
sum(Total, [Head|Tail]) :- sum(Sum, Tail), Total is Head + Sum.

% リストの要素の平均を返す。
average(Average, List) :- sum(Sum, List), count(Count, List), Average is Sum / Count.
