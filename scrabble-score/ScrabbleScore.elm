module ScrabbleScore exposing (..)


scoreWord word =
    let
        list =
            wordToChar word
    in
    List.sum (List.map (\char -> numberConversion char) list)


wordToChar : String -> List Char
wordToChar word =
    word
        |> String.toUpper
        |> String.toList


numberConversion : Char -> Int
numberConversion char =
    if List.member char [ 'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T' ] then
        1
    else if List.member char [ 'D', 'G' ] then
        2
    else if List.member char [ 'B', 'C', 'M', 'P' ] then
        3
    else if List.member char [ 'F', 'H', 'V', 'W', 'Y' ] then
        4
    else if char == 'K' then
        5
    else if List.member char [ 'J', 'X' ] then
        8
    else if List.member char [ 'Q', 'Z' ] then
        10
    else
        0
