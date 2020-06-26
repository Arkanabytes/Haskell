---1.17 Igualdas de 4 elementos
--Definir la funcion cuatroIguales tal que (cuatroIguales x y z u) se verifica
--si los elementos x, y, z y u son iguales ,Por ejemplo.
------cuatroIguales  5 5 5 5 == True
------cuatroIguales  5 5 4 5 == False
--indicacion utlizar la funcion anterior

--Solucion 
cuatroIguales  x y z u = x == y &&  tresIguales y z u
