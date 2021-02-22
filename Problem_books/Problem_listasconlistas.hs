--Las listas también pueden contener listas. Estas también pueden contener a su vez listas que contengan listas, que contengan listas...

ghci> let b = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
ghci> b
[[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
ghci> b ++ [[1,1,1,1]]
[[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3],[1,1,1,1]]
ghci> [6,6,6]:b
[[6,6,6],[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
ghci> b !! 2
[1,2,2,3,4]


--Las listas dentro de las listas pueden tener diferentes tamaños pero no pueden tener diferentes tipos. De la misma forma que no se puede 
--contener caracteres y números en un lista, tampoco se puede contener listas que contengan listas de caracteres y listas de números.
