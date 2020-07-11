--Arkana
--1.9 Rango de una lista

---Definir la funcion rango tal que (rango xs) es la isla formada por el menor y mayor elemento de xs.Por ejemplo,
---rango [3,2,7,5] == [2,7]
---Indicacion: se pueden usar minimun y maximun

--Solucion:
rango xs = [minimun xs, maximun xs]
