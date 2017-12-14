module Chapter11.Ciphers where

import Data.Char

type Key = String
type Plaintext = String
type Ciphertext = String

vigenere :: Key -> Plaintext -> Ciphertext
vigenere = undefined

unVigenere = undefined
unVigenere :: Key -> Ciphertext -> Plaintext

-- Should return "ALLY AL LYAL"
test = vigenere "ALLY" "MEET AT DAWN"