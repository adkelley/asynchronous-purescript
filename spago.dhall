{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "my-project"
, dependencies =
    [ "aff"
    , "console"
    , "datetime"
    , "effect"
    , "js-timers"
    , "parallel"
    , "psci-support"
    , "transformers"
    ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
