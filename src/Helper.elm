module Helper exposing (..)

import Html
import Html.Attributes


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list


headers : String -> Html.Html msg
headers str =
    Html.div []
        [ Html.h1 [] [ Html.text str ]
        , Html.h2 [] [ Html.text str ]
        , Html.h3 [] [ Html.text str ]
        , Html.h4 [] [ Html.text str ]
        , Html.h5 [] [ Html.text str ]
        , Html.h6 [] [ Html.text str ]
        ]


hyperlink : String -> String -> Html.Html msg
hyperlink link text =
    Html.a [ Html.Attributes.href link ] [ Html.text text ]
