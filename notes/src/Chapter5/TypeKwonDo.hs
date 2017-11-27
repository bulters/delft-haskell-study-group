module Chapter5.TypeKwonDo where


--  Ex. 1
f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

-- Implement h
h :: Int -> Char
h = undefined

--  Ex. 2
data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

-- Implement e
e :: A -> C
e = undefined

--  Ex. 3
data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

-- Implement xform
xform :: (X, Y) -> (Z, Z)
xform = undefined

--  Ex. 4
munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge = undefined