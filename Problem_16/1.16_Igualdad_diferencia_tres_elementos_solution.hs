--#Arkana#
--1.16 Igualdad y diferencia de tres elementos
---Definir la funcion tresIguales tal que (tresIguales x y z) se verifica si los 
---elementos x, y y z son iguales, Por ejemplo,
-----tresIguales 4 4 4 == True
-----tresIguales 4 3 4 == False

--Solucion 1:
tresIguales x y z = x == y && y == z
