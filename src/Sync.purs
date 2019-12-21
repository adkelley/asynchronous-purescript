module Sync where

import Prelude

import Effect (Effect)
import Effect.Class.Console as Console
import Effect.Timer (setTimeout)

slowInt :: Int -> (Int -> Effect Unit) -> Effect Unit
slowInt int cb =
  unit <$ setTimeout 1000 (cb int)

slowAdd :: Int -> Int -> (Int -> Effect Unit) -> Effect Unit
slowAdd a b cb =
  slowInt a \slowA ->
    slowInt b \slowB ->
      cb $ slowA + slowB

main :: Effect Unit
main = do
  slowAdd 1 2 \result ->
    Console.logShow result
