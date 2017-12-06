module Chapter9.Ciphers where

import Data.Char

type Key = Int
type Plaintext = String
type Ciphertext = String

ceasar :: Key -> Plaintext -> Ciphertext
ceasar = undefined

unCeasar :: Key -> Ciphertext -> Plaintext
unCeasar = undefined