module Raindrops exposing (..)


raindrops : Int -> String
raindrops number =
    if number % 3 == 0 then
        if number % 5 == 0 then
            if number % 7 == 0 then
                "PlingPlangPlong"
            else
                "PlingPlang"
        else if number % 7 == 0 then
            "PlingPlong"
        else
            "Pling"
    else if number % 5 == 0 then
        if number % 7 == 0 then
            "PlangPlong"
        else
            "Plang"
    else if number % 7 == 0 then
        "Plong"
    else
        toString number
