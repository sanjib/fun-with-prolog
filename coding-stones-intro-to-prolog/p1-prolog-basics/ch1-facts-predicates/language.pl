isLanguage(english).
isLanguage(spanish).
isLanguage(italian).
isLanguage(arabic).
isLanguage(bengali).

peopleSpeak(L) :- isLanguage(L).

% query tests:
% isLanguage(wibble).
% isLanguage(X).
