:- dynamic word/1.

%word_square(Words) :-
%    Words = [[W11, W12, W13, W14],
%             [W12, W22, W23, W24],
%             [W13, W23, W33, W34],
%             [W14, W24, W34, W44]],
%    word([W11, W12, W13, W14]),
%    word([W12, W22, W23, W24]),
%    word([W13, W23, W33, W34]),
%    word([W14, W24, W34, W44]).

%    Words = [[A, B, C, D],
%             [B, E, F, G],
%             [C, F, H, I],
%             [D, G, I, J]],
%    word([A, B, C, D]),
%    word([B, E, F, G]),
%    word([C, F, H, I]),
%    word([D, G, I, J]).

word_square(Words) :-
    Words = [[A, B, C, D],
             [E, F, G, H],
             [I, J, K, L],
             [M, N, O, P]],
    word([A, B, C, D]),
    word([A, E, I, M]),

    word([E, F, G, H]),
    word([B, F, J, N]),

    word([I, J, K, L]),
    word([C, G, K, O]),

    word([M, N, O, P]),
    word([D, H, L, P]),

    (B \= E).