module Chapter13.Ciphers where

import Data.Char

-- Open your Ciphers module and modify it so that the
-- Caesar and Vigenère ciphers work with user input.

type Key = String
type Plaintext = String
type Ciphertext = String

ceasar :: Key -> Plaintext -> Ciphertext
ceasar = undefined

unCeasar :: Key -> Ciphertext -> Plaintext
unCeasar = undefined

vigenere :: Key -> Plaintext -> Ciphertext
vigenere = undefined

unVigenere = undefined
unVigenere :: Key -> Ciphertext -> Plaintext
