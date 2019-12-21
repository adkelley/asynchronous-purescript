module Async where

import Prelude

import Data.Time.Duration (Milliseconds(..))
import Effect (Effect)
import Effect.Aff (Aff, delay, launchAff_)
import Effect.Class.Console as Console

slowInt :: Int -> Aff Int
slowInt int = do
  delay $ Milliseconds 1000.0

  pure int

slowAdd :: Int -> Int -> Aff Int
slowAdd a b = do
  slowA <- slowInt a
  slowB <- slowInt b

  pure $ slowA + slowB

main :: Effect Unit
main = launchAff_ do
  result <- slowAdd 1 2

  Console.logShow result
