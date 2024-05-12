
type Nombre = String 
type Altura = Int
type Reputacion = Int
type Hobbit = (Nombre,Altura) --Declaración de Hobbit 
type ListaHobbits = [Hobbit] --Declaración de la lista de Hobbits
type ListaSuperHobbits = [SuperHobbit]
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
--Para acceder a los datos de las duplas, se crean estas funciones:

nombreD = fst
alturaD = snd

--Ejercicios: 
-- 1) La reputación de un Hobbit es la cantiad de letras de su nombre * altura
reputacionDeHobbit :: Hobbit->Reputacion
reputacionDeHobbit hobbit = length(nombreD hobbit)*alturaD hobbit 

diferenciaDeAltura :: Hobbit->Hobbit->Altura
diferenciaDeAltura h1 h2 = abs(alturaD h1 - alturaD h2)

lista :: ListaHobbits 
lista = [bilbo,rosita,martina,juan,marcos] --Creación de lista

--La lista tiene el siguiente formato:
--Al primero se lo llama head, al ultimo last, a lo que sigue despues del primero tail y a lo que le antecede 
--al ultimo innit:

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

-- Data: distintos tipos de dato en una misma variable:
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

fermin :: SuperHobbit
fermin = SuperHobbit {
    nombre = "Fermin",
    estatura = 154,
    fuerza = 17,
    edad = 19 
}

gonzalo :: SuperHobbit
gonzalo = SuperHobbit {
    nombre = "Gonzalo",
    estatura = 102,
    fuerza = 15,
    edad = 17
}



sista :: [SuperHobbit]
sista = [gonzalo,matias,fermin]

mostrarNombre :: SuperHobbit->String
mostrarNombre = nombre  

primerNombre :: [SuperHobbit]->SuperHobbit
primerNombre = head


