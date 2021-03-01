--Arkanabytes

--drop funciona de forma similar, solo que quita un número de elementos del comienzo de la lista.

ghci> drop 3 [8,4,2,1,5,6]
[1,5,6]
ghci> drop 0 [1,2,3,4]
[1,2,3,4]
ghci> drop 100 [1,2,3,4]
[]
