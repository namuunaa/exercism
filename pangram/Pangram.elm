module Pangram exposing (..)


isPangram : String -> Bool
isPangram sentence =
    let
        alphabet =
            "abcdefghijklmnopqrstuvqxyz"

        lowerSentence =
            String.toLower sentence
    in
    String.all (\letter -> List.member letter (String.toList lowerSentence)) alphabet
