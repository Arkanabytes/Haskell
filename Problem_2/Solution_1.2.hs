--1.2 suma de dos numeros de coleccion de monedas

--Ejercicio 1.2.1 Definir la funcion sumaMonedas tal que (sumaMonedas a b c d e) es la suma de los euros correspondientes a  
--a monedas de 1 euro, b de 2 euros, c de 5 euros, d 10 euros y e de 20 euros por ejemplo.
--------------sumaMonedas 0 0 0 0 1 ==  20
--------------sumaMonedas 0 0 8 0 3 == 100
--------------sumaMonedas 1 1 1 1 1 ==  38

--solucion 
sumaMonedas a b c d e = 1*a+2*b+5*c+10*d+20*e
