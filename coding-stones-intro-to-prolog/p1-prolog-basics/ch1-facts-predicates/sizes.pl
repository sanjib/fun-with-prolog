bigger(ant, flea).
bigger(mouse, ant).
bigger(cat, mouse).
bigger(horse, cat).
bigger(whale, horse).

bigger_than(A, B) :- bigger(A, B).
bigger_than(A, B) :- bigger(A, X), bigger_than(X, B).

% returns true if at least bigger than one intermediary animal
% much_bigger_than(cat, mouse): false
% much_bigger_than(cat, ant): true
much_bigger_than(A, B) :- bigger(A, X), bigger_than(X, B).
