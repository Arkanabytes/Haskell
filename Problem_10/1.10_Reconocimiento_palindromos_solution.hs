--1.10 Reconocimiento de palindromos
---Definir la funcion palindromo tal que (palindromo xs) se verifica si xs es una palindromo ; es decir es lo mismo que leer xs de izquierda a derecha que de derecha a izquierda.
---Por ejemplo,
----palindromo [3,2,5,3] == True
----palindromo [3,2,5,6,3] ==False

--Solucion:
palindromo xs = xs == reverse xs
