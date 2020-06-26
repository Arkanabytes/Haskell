--1.12 Finales de una lista 
---Definir la funcion finales  tal que (finales n xs) es la lista formada por los n finales elementos de xs. Por ejemplo.
-----finales 3 [2,5,4,7,9,6] == [7,9,6]

--Solucion:
finales n xs = drop (lenght xs - n) xs
