## Puzzle 1

- Word source: https://www.wordfind.com/4-letter-words/
- https://www.thefreedictionary.com/4-letter-words.htm

### Example query and result:

- files used: words4.pl and word_square4.pl
- here are the first 5 results

<pre>
?- word_square(Words), maplist(portray_clause, Words).
["a", "c", "i", "d"].
["c", "a", "r", "e"].
["i", "r", "o", "n"].
["d", "e", "n", "y"].
Words = [["a", "c", "i", "d"], ["c", "a", "r", "e"], ["i", "r", "o", "n"], ["d", "e", "n", "y"]] ;
["a", "c", "i", "d"].
["c", "o", "d", "e"].
["i", "d", "e", "a"].
["d", "e", "a", "d"].
Words = [["a", "c", "i", "d"], ["c", "o", "d", "e"], ["i", "d", "e", "a"], ["d", "e", "a", "d"]] ;
["a", "c", "i", "d"].
["c", "o", "d", "e"].
["i", "d", "e", "a"].
["d", "e", "a", "l"].
Words = [["a", "c", "i", "d"], ["c", "o", "d", "e"], ["i", "d", "e", "a"], ["d", "e", "a", "l"]] ;
["a", "c", "i", "d"].
["c", "o", "d", "e"].
["i", "d", "e", "a"].
["d", "e", "a", "n"].
Words = [["a", "c", "i", "d"], ["c", "o", "d", "e"], ["i", "d", "e", "a"], ["d", "e", "a", "n"]] ;
["a", "c", "i", "d"].
["c", "o", "d", "e"].
["i", "d", "e", "a"].
["d", "e", "a", "r"].
Words = [["a", "c", "i", "d"], ["c", "o", "d", "e"], ["i", "d", "e", "a"], ["d", "e", "a", "r"]]
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
