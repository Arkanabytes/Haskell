--1.7 Disyuncion excluyente
---Definir la funcion xor1 que calcule la disyuncion excluyente a partir de la tabla de la verdad.
--Usar 4 ecuaciones, una por cada linea de la tabla.

--Solucion
xor1 True True = False
xor1 True False = True
xor1 False True = True
xor1 False False= False
