--1.14 Extremos de una lista
---Definir la funcion extremos tal que (extremos n xs) es la lista formada por los n primeros 
---elementos de xs y los finales elementos de xs. Por ejemplo,
-----extremo 3 [2,6,7,1,2,4,5,8,9,2,3,] == [2,6,7,9,2,3]

--Solucion:
extremos n xs = take n xs ++ drop (lenght xs - n) xs
