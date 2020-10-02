--Arkana

--1.19 Division Segura
---Ejercicio Definir la funcion divisionSegura tal que (divisionSegura x y ) es x/y si y no es cero y 999 en caso contrario.Por ejemplo,
----DivisionSeguro 7  2  == 3.5
----DivisionSeguro 7  0  == 9999.0

--Solucion
divisionSegura _ 0 = 9999
divisionSegura x y = x/y
