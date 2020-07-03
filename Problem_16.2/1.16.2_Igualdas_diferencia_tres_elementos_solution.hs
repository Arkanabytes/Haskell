--#Arkana#

--1.16.2 Igualdas y diferencia de tres elementos
--Definir la funcion tresDiferentes tal que (tresDifenrentes x y z) se verifica
--si los elementos x, y, z son distintos,Por ejemplo.
------tresDiferentes 3 5 2 == True
------tresDiferentes 3 5 3 == False

--Solucion 
tresDiferentes x y z = x /= y && x /= z && y /= z
