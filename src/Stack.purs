module Stack where

import Prelude

import Control.Monad.Except (ExceptT, runExceptT, throwError)
import Control.Parallel (parSequence)
import Data.Foldable (sum)
import Data.Time.Duration (Milliseconds(..))
import Effect (Effect)
import Effect.Aff (Aff, delay, launchAff_)
import Effect.Aff.Class (liftAff)
import Effect.Class.Console as Console

type ErrorAff a = ExceptT String Aff a

slowInt :: Int -> ErrorAff Int
slowInt int = do
  liftAff $ delay $ Milliseconds 1000.0

  if int > 10
    then throwError "too Big"
    else pure int

slowAdd :: Int -> Int -> ErrorAff Int
slowAdd a b = do
  results <- parSequence [slowInt a, slowInt b]

  pure $ sum results

main :: Effect Unit
main = launchAff_ do
  result1 <- runExceptT $ slowAdd 1 2

  Console.logShow result1

  result2 <- runExceptT $ slowAdd 11 2

  Console.logShow result2

