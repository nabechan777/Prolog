
% 地図の塗り分け
% 事実
different(red, green).
different(red, blue).
different(green, red).
different(green, blue).
different(blue, red).
different(blue, green).

% 規則
coloring(Alabama, Mississippi, Georgia, Tennessee, Florida) :-
    different(Mississippi, Tennessee),
    different(Mississippi, Alabama),
    different(Alabama, Tennessee),
    different(Alabama, Mississippi),
    different(Alabama, Georgia),
    different(Alabama, Florida),
    different(Georgia, Florida),
    different(Georgia, Tennessee).
