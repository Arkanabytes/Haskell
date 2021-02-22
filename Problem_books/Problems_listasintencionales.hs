-- En este caso, la lista intensional que deberíamos usar sería [x*2 | x <- [1..10]]. x es extraído de [1..10] y para cada elemento de [1..10] (que hemos 
--ligado a x) calculamos su doble. Su resultado es:

ghci> [x*2 | x <- [1..10]]
[2,4,6,8,10,12,14,16,18,20]

--Como podemos ver, obtenemos el resultado deseado. Ahora vamos a añadir una condición (o un predicado) a esta lista intensional. Los predicados van después de 
--la parte donde enlazamos las variables, separado por una coma. Digamos que solo queremos los elementos que su doble sea mayor o igual a doce:

ghci> [x*2 | x <- [1..10], x*2 >= 12]
[12,14,16,18,20]

--Bien, funciona. ¿Y si quisiéramos todos los números del 50 al 100 cuyo resto al dividir por 7 fuera 3? Fácil:
ghci> [ x | x <- [50..100], x `mod` 7 == 3]
[52,59,66,73,80,87,94]
