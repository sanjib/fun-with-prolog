%     Farmer    Wolf    Goat    Cabbage
safe([Bank,     _,      Bank,   _]).
safe([Bank,     Bank,   _,      Bank]).

% X - position
% Y - position
% W - Wolf
% G - Goat
% C - Cabbage
move(wolf,         [X, X, G, C], [Y, Y, G, C]) :- opposite-bank(X, Y).
move(goat,         [X, W, X, C], [Y, W, Y, C]) :- opposite-bank(X, Y).
move(cabbage,      [X, W, G, X], [Y, W, G, Y]) :- opposite-bank(X, Y).
move(farmer-alone, [X, W, G, C], [Y, W, G, C]) :- opposite-bank(X, Y).

opposite-bank(n, s).
opposite-bank(s, n).

solution(GoalState, GoalState, [], _).
solution(CurrentState, GoalState, [Move | Rest], Visited) :-
    move(Move, CurrentState, NextState),
    not(member(NextState, Visited)),
    safe(NextState),
    solution(NextState, GoalState, Rest, [NextState | Visited]).

solve(InitialState, GoalState, WithMoves) :-
    solution(InitialState, GoalState, WithMoves, [InitialState]).
