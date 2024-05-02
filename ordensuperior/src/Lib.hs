-- Orden superior 

identidad :: a -> a
identidad x=x

-- Funciones con restricciones:

minimo :: Ord a => a -> a -> a 
minimo x y
        | x < y = x
        | otherwise = y

sumaRara :: Num a => a -> a -> a
sumaRara a b = a + b*2

primero :: [a] -> a --No importa de que tipo sea la lista
primero lista = head lista

ultimo :: [a] -> a
ultimo lista = last lista

-- Las funciones se pueden pasar como parametros:

supera100 tarea numero = tarea numero > 100 -- "tarea" puede ser el nombre de cualquier funcion. Es una funcion generica. Comparador generico
-- Se le pasa por consola supera100 doble 40 . "tarea" se remplaza por la funcion doble 

doble x = 2*x

triple x = 3*x

cuadruple x = 4*x

larga lista = length lista > 6
empiezaConA lista = head lista == 'a'
capicua lista = lista == reverse lista 

-- Las tres devuelven booleanos:

larga,empiezaConA,capicua :: [Char]->Bool

{- 
any : buscador generico | any empiezaConA ["arbol","chau","bareiro"] / True 
filter : filtra lo que le pidas | filter even [1,2,3,4,5,6,7] / 2 4 6
-}
-- f1 aplica la funcion pero con los parametros al reves, buscar flip 
f1 x y z = z y x  -- Como z al lado tiene argumentos, tiene que ser a funcion. Recibe dos argumentos 

--f2 aplica la funcion dada sobre el valor dado, buscar (.)
f2 a b = a b --f2 doble (doble 2) / 8 

f3 a b c = a (b c) -- La funcion siempre es la primera. En este caso es a. b tambien es una función ya que tambien tiene
-- argumentos a la derecha | f3 even length "hola" / True . La palabra "hola" tiene una longuitud par 

f4 w e r 
       | w r > e r = w
       | otherwise = e 

--Buscar map, all, foldl1, foldl, zipWith, flip, ., $ 
{-
map: Toma una función y una lista como argumentos, y aplica esa función a cada elemento de la lista, devolviendo una nueva lista con los resultados.

all: Toma una función que devuelve un booleano y una lista como argumentos, y verifica si todos los elementos de la lista satisfacen la condición dada por la función.

foldl1: Toma una función binaria y una lista no vacía, y aplica la función binaria de izquierda a derecha a los elementos de la lista,
comenzando por el primer elemento y usando el resultado acumulado como el primer argumento de la siguiente aplicación.

foldl: Similar a foldl1, pero toma un valor inicial como primer argumento y lo utiliza como valor acumulado en la primera aplicación de la función.

zipWith: Toma una función binaria y dos listas como argumentos, y aplica la función a pares de elementos correspondientes de las dos listas, devolviendo una nueva lista con los resultados.

flip: Toma una función binaria y devuelve una nueva función que toma los mismos argumentos pero con el orden de los dos primeros argumentos intercambiados.

. (composición de funciones): Toma dos funciones como argumentos y devuelve una nueva función que es la composición de esas dos funciones.
La salida de la segunda función se convierte en la entrada de la primera función.

$ (aplicación de función de bajo precedencia): Toma una función y un valor como argumentos, y aplica la función al valor. 
Es útil para evitar la necesidad de utilizar paréntesis para la aplicación de funciones, ya que tiene una precedencia muy baja.}

" : " : concatena un valor en una lista | POR CONSOLA / 1 : [2,3,4,5] / [1,2,3,4,5]

init : todo menos el ultimo de una lista 

NOTA SUPER IMPORATANTE: siempre que tengas una lista de un data, y adentro de ese data alla un numero con el que quieras trabajar, crea una lista con esos numeros:

data Libro = UnLibro {
    autor :: String,
    nombre :: String,
    paginas :: Int
}

listaDePaginas libro = map paginas libro

"any" : hay algún | any (funcion)(lista)

"elem" : si ese elemento esta en la lista | elem 1 [1,2,3,4] TRUE


-}
