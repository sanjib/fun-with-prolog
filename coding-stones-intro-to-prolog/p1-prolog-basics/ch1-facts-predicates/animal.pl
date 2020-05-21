isAnimal(pig).
isAnimal(cow).
isAnimal(sheep).
isAnimal(chicken).

livesInBarn(A) :- isAnimal(A).
