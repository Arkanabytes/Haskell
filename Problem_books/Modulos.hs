--Cargando Modulos

--La sintaxis para importar módulos en un script de Haskell es import <module name>. Debe aparecer antes de que definamos cualquier función, así que las 
--importaciones de módulos suelen estar al principio de los ficheros. Un script puede, obviamente, importar varios módulos. Simplemente hay que poner cada import 
--en líneas separadas. Vamos a importar el módulo Data.List, el cual contiene un puñado de útiles funciones para trabajar con listas, y utilizaremos una función 
--que exporta dicho módulo para crear una función que nos diga cuantos elementos únicos hay en una lista.

import Data.List

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub


--Cuando realizamos import Data.List, todas las funciones que Data.List exporta están disponibles en el espacio de nombres global. Esto significa que podemos acceder
--a todas estas funciones desde nuestro script. nub es una función que está definida en Data.List la cual toma una lista y devuelve otra sin elementos duplicados. 
--Componer length y nub haciendo length . nub produce una función equivalente a \xs -> length (nub xs).
