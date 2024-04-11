
type Nombre = String 
type Altura = Int
type Reputacion = Int
type Hobbit = (Nombre,Altura) --Declaración de Hobbit 
type ListaHobbits = [Hobbit] --Declaración de la lista de Hobbits

--Declaración de los Hobbits

bilbo :: Hobbit
bilbo = ("Bilbo",125)

rosita :: Hobbit
rosita = ("Rosita",110)

marcos :: Hobbit
marcos = ("Marcos",132)

juan :: Hobbit
juan = ("Juan",122)

martina :: Hobbit
martina = ("Martina",105)

--Funciones de acceso

nombreD = fst
alturaD = snd


reputacionDeHobbit :: Hobbit->Reputacion
reputacionDeHobbit hobbit = length(nombreD hobbit)*alturaD hobbit 

diferenciaDeAltura :: Hobbit->Hobbit->Altura
diferenciaDeAltura h1 h2 = abs(alturaD h1 - alturaD h2)

lista :: ListaHobbits 
lista = [bilbo,rosita,martina,juan,marcos] --Creación de lista

primero :: ListaHobbits->Hobbit 
primero = head

ultimo :: ListaHobbits->Hobbit
ultimo = last

cantidadDeHobbits :: ListaHobbits->Int
cantidadDeHobbits = length

-- Operaciones en las listas:
-- El "take" tomas los primeros n valores desde el inicio. 
-- El drop, descarta n valores tambien arrancando desde el inicio.

tresPrimeros :: ListaHobbits->[Hobbit]
tresPrimeros = take 3 

elResto :: ListaHobbits->[Hobbit]
elResto = drop 3

--Data: distintos tipos de dato en una misma variable:
-- data Nombre = nombreParaCrearlo

data SuperHobbit = SuperHobbit{
    nombre :: String,
    estatura :: Integer,
    fuerza :: Integer,
    edad :: Integer -- el ultimo dato va sin la coma 
} deriving Show -- para poder mostrar

matias :: SuperHobbit
matias = SuperHobbit {
    nombre = "Matias",
    estatura = 128,
    fuerza = 10,
    edad = 20
}

gonzalo :: SuperHobbit
gonzalo = SuperHobbit {
    nombre = "Gonzalo",
    estatura = 102,
    fuerza = 15,
    edad = 17
}

--Cambiar en Haskell 
