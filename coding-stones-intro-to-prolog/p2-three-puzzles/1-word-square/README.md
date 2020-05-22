## Puzzle 1

- Word source: https://www.wordfind.com/4-letter-words/
- https://www.thefreedictionary.com/4-letter-words.htm

### Example query and result:

- files used: words4.pl and word_square4.pl
- here are 3 results (not the first three)

<pre>
?- word_square(Words), maplist(portray_clause, Words).
...
["s", "a", "m", "e"].
["o", "r", "a", "l"].
["l", "e", "s", "s"].
["e", "a", "s", "e"].
Words = [["s", "a", "m", "e"], ["o", "r", "a", "l"], ["l", "e", "s", "s"], ["e", "a", "s", "e"]] ;
["s", "a", "v", "e"].
["o", "r", "a", "l"].
["l", "e", "s", "s"].
["d", "a", "t", "e"].
Words = [["s", "a", "v", "e"], ["o", "r", "a", "l"], ["l", "e", "s", "s"], ["d", "a", "t", "e"]] ;
["s", "l", "o", "w"].
["n", "i", "n", "e"].
["o", "n", "c", "e"].
["w", "e", "e", "k"].
Words = [["s", "l", "o", "w"], ["n", "i", "n", "e"], ["o", "n", "c", "e"], ["w", "e", "e", "k"]]
</pre>

- get [palindrome](https://en.wikipedia.org/wiki/Palindrome)
(based on words4-big.pl), first 3 results

<pre>
?- word([X, Y, Y, X]), maplist(portray_clause, [X, Y, Y, X]).
"a".
"b".
"b".
"a".
X = "a",
Y = "b" ;
"a".
"n".
"n".
"a".
X = "a",
Y = "n" ;
"b".
"o".
"o".
"b".
X = "b",
Y = "o" ;
</pre>

### How to convert 4-letter words to list of letters in Prolog

We will copy words from links above and then run a series
of regex find/replace in Notepad++

This will ultimately transform a 4 letter word like,

from: `care` 

to: `word(["c", "a", "r", "e"]).`

- separate each word in a new line (only required wordfind.com)

find: `(....)`

replace: `$1\n`

- wrap each letter in quotes and comma

find: `(.?)`

replace: `"$1",` 

- prefix each line

find: `^`

replace: `word\([`

- suffix each line

find: `, $`

replace: `]\)\.`
