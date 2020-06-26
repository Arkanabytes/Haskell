--1.11 Elementos interiores de una lista
---Definir la funcion interior tal que (interior xs) es la lista obtenida eliminando los extremos de la lista xs, Por ejemplo,
----interior [2,5,3,7,3] == [5,3,7]
----interior [2. . 7]    == [3,4,5,6]

--Solucion:
interior xs = tail (init xs)
