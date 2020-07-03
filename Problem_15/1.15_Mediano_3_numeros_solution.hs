--#Arkana#
--1.15 Mediano de 3 numeros 
---Definir la funcion mediano tal que (mediano x y z) es el numero mediano de los tres 
--numeros x y y z. Por ejemplo,
-----mediano 3 2 5 == 3
-----mediano 2 4 5 == 4
-----mediano 2 6 5 == 5
-----mediano 2 6 6 == 6

--Solucion 1:
mediano x y z = x + y + z - minimun [x, y, z] - maximun [x, y, z]

--Solucion 2:
mediano' x y z
    | a <= x && x <= b = x
    | a <= y && y <= b = y
    | otherwise        = z
    where a = minimun [x,y,z]
          a = maximun [x,y,z]
