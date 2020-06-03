module Main exposing (..)

import Browser
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Element.Input as Input
import Element.Region as Region


main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }


type alias Model =
    { content : String }


init =
    { content = "" }


type Msg
    = Update Model


update msg model =
    case msg of
        Update newModel ->
            newModel


view model =
    Element.layout
        []
        (Element.column [] [ text "test" ])
