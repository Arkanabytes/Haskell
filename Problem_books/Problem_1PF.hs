--Arkanabytes

--Funciones principales

doubleMe x = x + x

--Las funciones son definidas de forma similar a como son llamadas. El nombre de la función es seguido por los parámetros separados por espacios. Pero, cuando estamos
--definiendo funciones, hay un = y luego definimos lo que hace la función. Guarda esto como baby.hs o como tú quieras. Ahora navega hasta donde lo guardaste y 
--ejecuta ghci desde ahí. Una vez dentro de GHCi, escribe :l baby. Ahora que nuestro código está cargado, podemos jugar con la función que hemos definido.

ghci> :l baby
[1 of 1] Compiling Main             ( baby.hs, interpreted )
Ok, modules loaded: Main.
ghci> doubleMe 9
18
ghci> doubleMe 8.3
16.6
