--1.18 Propiedad trianqular
--Las longitudes de los lados de un triangulo no pueden ser cualesquiera.Para que pueda construirse el triangulo, 
--tiene que cumplirse la propiedad triangular; es decir, longuitud de cada lado tiene que ser un menor que la suma
--de los otros dos lados.
---Definir la funcion triangular tal que(triangular a b c) se verifica si a, b y c cumplen la propiedad triangular
---Por, ejemplo.

-------triangular  3  4  5 == True 
-------triangular 30  4  5 == True 
-------triangular  3 40  5 == True 
-------triangular 30  4 50 == True 

--Solucion

triangular a b c = a < b+c && b < a+c && c< a+b
