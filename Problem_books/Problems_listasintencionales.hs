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

--Tomamos una lista de números y la filtramos usando predicados. Otro ejemplo, digamos que queremos lista intensional que reemplace cada número impar mayor que
--diez por “BANG!” y cada número impar menor que diez por “BOOM!”. Si un número no es impar, lo dejamos fuera de la lista. Para mayor comodidad, vamos a poner 
--la lista intensional dentro de una función para que sea fácilmente reutilizable.

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

--La última parte de la comprensión es el predicado. La función odd devuelve True si le pasamos un número impar y False con uno par. El elemento es incluido en
--la lista solo si todos los predicados se evalúan a True.

ghci> boomBangs [7..13]
["BOOM!","BOOM!","BANG!","BANG!"]

--Podemos incluir varios predicados. Si quisiéramos todos los elementos del 10 al 20 que no fueran 13, 15 ni 19, haríamos:
ghci> [x | x <- [10..20], x /= 13, x /= 15, x /= 19]
[10,11,12,14,16,17,18,20]

--Si tenemos dos listas, [2,5,10] y [8,10,11] y queremos que el producto de todas las combinaciones posibles entre ambas, podemos usar algo como:
ghci> [ x*y | x <- [2,5,10], y <- [8,10,11]]
[16,20,22,40,50,55,80,100,110]

--Como era de esperar, la longitud de la nueva lista es de 9 ¿Y si quisiéramos todos los posibles productos cuyo valor sea mayor que 50?
ghci> [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]
[55,80,100,110]

--¿Qué tal una lista intensional que combine una lista de adjetivos con una lista de nombres? Solo para quedarnos tranquilos...
ghci> let noums = ["rana","zebra","cabra"]
ghci> let adjetives = ["perezosa","enfadada","intrigante"]
ghci> [noum ++ " " ++ adjetive | noum <- noums, adjetive <- adjetives]
["rana perezosa","rana enfadada","rana intrigante","zebra perezosa",
"zebra enfadada","zebra intrigante","cabra perezosa","cabra enfadada",
"cabra intrigante"]
