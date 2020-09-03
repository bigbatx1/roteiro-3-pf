-Programacao funcional
-Marcelo Junio de Oliveira Teixeira 11911BCC024
-exercicio1
-a

oulogico :: (Bool,Bool) -> Bool			
oulogico (True,True) = True
oulogico (True,False) = True
oulogico (False,True) = True
oulogico (False,False) = False

oulogico2 :: (Bool,Bool) -> Bool
oulogico2 (False,False) = False
oulogico2 (_,_) = True

oulogico3 :: (Bool,Bool) -> Bool
oulogico3 (False,a) = a
oulogico3 (True,_) = True

-b
    
oulogico4 :: Bool -> Bool -> Bool
oulogico4 bool bool1
    |bool == True = True
    |bool1 == True = True
    |otherwise = False


oulogico5 :: Bool -> Bool -> Bool
oulogico5 bool bool1
    |bool == False && bool1 == False = False
    |otherwise = True



-exercicio2

distancia :: (Float,Float) -> (Float,Float) -> Float
distancia (x,y) (x1,y1) = sqrt(((x-x1)^2)+((y-y1)^2))

-exercicio4

fatorial :: Int -> Int
fatorial x
	|x == 0 = 1
	|otherwise = x * fatorial x-1

fatorial2:: Int->Int
fatorial 0=1
fatorial n= n*fatorial(n-1)

-exercicio5
fib:: Int->Int
fib 0=0
fib 1=1
fib n=fib(n-2)+fib(n-1)

-exercicio6

n_tri :: Int -> Int
n_tri x
	|x == 0 = 0
	|otherwise = x + n_tri (x-1)
  
  -exercicio7
 
 passo :: (Int, Int) -> (Int, Int)
passo (x, y) = (y, x+y)

fibo2 :: Int -> (Int, Int)
fibo2 0 = (0,1)
fibo2 x = passo (fibo2 (x - 1))

-exercico8

potencia2:: Int->Int
potencia2 0=1
potencia2 1=2
potencia2 n=2*potencia2 (n-1)

-exercicio9
-a
prodI :: (Int,Int) -> Int
prodI (x,y) = if x == y then y else x * prodI (x+1,y)

-b

fatorial9 :: Int -> Int
fatorial9 x 
	|x == 0 = 0
	|otherwise = prodIntervalo(1,x)
  
  -exercicio11

resto_div :: (Int,Int) -> Int
resto_div (x,y)
	|x == y = 0
	|x < y = x
	|otherwise = resto_div (x-y,y)

div_inteira :: (Int,Int) -> Int
div_inteira (x,y)
	|x == y = 1
	|x < y = 0
	|otherwise = resto_div (div_inteira(x,y),y) * y

-exercicio12

mdc1 :: (Int,Int) -> Int
mdc1 (x,y)
	|y == 0 = x
	|otherwise = mdc1(y,(mod x y))

mdc2 :: (Int,Int) -> Int
mdc2 (x,0) = x
mdc2 (x,y) = mdc2(y,(mod x y))

-exercicio13

binomial1 :: (Int,Int) -> Int
binomial1 (n,0) = 1
binomial1 (n,k)
 |k == 0 = 1
 |k == n = 1
 |otherwise = binomialg (n-1,k) + binomialg (n-1,k-1)

binomial2 :: (Int,Int) -> Int
binomial2 (n,0) = 1
binomial2 (n,k) = if (k == n) then 1 else binomial (n-1,k) +
binomial2 (n-1,k-1)

-exercicio14

-a
[5..1]
-b
[a,c..e]
-c
[1,4..16]
-d
zip :: [a] -> [b] -> [(a,b)]
zip [1,-2..-11] [1,5..17]

-exercicio15

-a
lista1 :: Int -> Int -> [Int]
lista1 a b
	|a == b = [a]
	|a > b = []
	|otherwise = [a..b]

-b
lista2 :: Int -> Int -> [Int]
lista2 a b
	|a < b = [x | x <- [a..b], even x]
	|otherwise = []



     
    
