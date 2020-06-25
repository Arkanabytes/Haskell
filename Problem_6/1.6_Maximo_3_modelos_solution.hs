--1.6 Maximo de 3 modelos
--Definir la funcion maxtres tal que (maxTres x y z) es el maximo de x, y, z por ejemplo,
---maxTres 6 2 4 == 6
---maxTres 6 7 4 == 7
---maxTres 6 7 9 == 9

--Solucion
maxTres x y z = max x (max y z)
