module Anagram exposing (..)

import List


detect : String -> List String -> List String
detect myWord list =
    List.filter (\word -> isAnagram myWord word) list


convertedWord word =
    word
        |> String.toLower
        |> String.toList
        |> List.sort


isAnagram word comparableWord =
    if convertedWord word == convertedWord comparableWord && String.toLower word /= String.toLower comparableWord then
        True
    else
        False
