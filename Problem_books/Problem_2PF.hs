doubleUs x y = x*2 + y*2


--Simple. La podríamos haber definido también como doubleUs x y = x + x + y + y. Ambas formas producen resultados muy predecibles (recuerda añadir esta función en el 
--fichero baby.hs, guardarlo y luego ejecutar :l baby dentro de GHCi).

ghci> doubleUs 4 9
26
ghci> doubleUs 2.3 34.2
73.0
ghci> doubleUs 28 88 + doubleMe 123
478
