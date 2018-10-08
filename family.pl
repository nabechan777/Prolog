
% 事実
father(zeb, john_boy_sr).
father(john_boy_sr, john_boy_jr).

% 規則
% XがYの父のであるのであれば、XはYの祖先である。
ancestor(X, Y) :- father(X, Y).
% XがZの父であり、ZがYの祖先であれば、XはYの祖先である。
ancestor(X, Y) :- father(X, Z), ancestor(Z, Y).
