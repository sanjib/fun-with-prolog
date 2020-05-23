# The Inclusive Farmer and the River

## Actors

Farmer 👩‍🌾

Wolf 🐺

Goat 🐐

Cabbage 🥬

## Description

Wolf eats goat, goat eats cabbage.
When the farmer is present, no one eats each other.
The farmer has to ferry everyone to the other side of the river.
The boat has only capacity for 2, so the farmer can take only one object at a time.

If the farmer takes the cabbage first, then the wolf eats the goat.
If the farmer takes the wolf first, then the goat eats the cabbage.


## Usage

<pre>
?- solve([n,n,n,n], [s,s,s,s], Moves).
Moves = [goat, farmer-alone, wolf, goat, cabbage, farmer-alone, goat] ;
Moves = [goat, farmer-alone, wolf, goat, cabbage, farmer-alone, goat] ;
Moves = [goat, farmer-alone, cabbage, goat, wolf, farmer-alone, goat] ;
Moves = [goat, farmer-alone, cabbage, goat, wolf, farmer-alone, goat] ;
false.
</pre>

## Solution 1

1. Farmer takes goat to south bank, comes back alone
2. Farmer takes wolf to south bank, brings back goat
3. Farmer takes cabbage to south bank, comes back alone
4. Farmer takes goat to south bank

## Solution 2

1. Farmer takes goat to south bank, comes back alone
2. Farmer takes cabbage to south bank, brings back goat
3. Farmer takes wolf to south bank, comes back alone
4. Farmer takes goat to south bank
