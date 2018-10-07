% 事実
likes(wallace, cheese).
likes(grommit, cheese).
likes(wendolene, sheep).

% 規則
friend(X, Y) :- \+(X=Y), likes(X, Z), likes(Y, Z).
