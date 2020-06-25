--1.4 área de una corona circular
---Definir la funcion areaDeCoronaCircular tal que (areaDeCoronaCircular r1 r2)
--es el area de una corona de radio interior r1 y radio r2, por ejemplo,
-----areaDeCoronaCircular 1 2 == 9.4247796076938
-----areaDeCoronaCircular 2 5 == 65.9734457538766
-----areaDeCoronaCircular 3 5 == 50.265448255743669

--Solucion
areaDeCoronaCircular r1 r2 = pi*(r2^2 - r1^2)
