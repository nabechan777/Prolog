% 事実
likes(wallace, cheese).
likes(grommit, cheese).
likes(wendolene, sheep).

% 規則
% X, Y, Zは人物名
% XとYが友達ということは、XがZのことが好きかつYがZのことが好きである。
friend(X, Y) :- \+(X=Y), likes(X, Z), likes(Y, Z).
