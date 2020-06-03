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
        [ width fill
        , height fill
        , Background.color <| rgb 1 0 0
        , inFront navbar
        ]
        (Element.column [ width fill, Background.color <| rgb 0 0 1 ]
            [ navbar
            , content
            ]
        )


navbar =
    Element.column
        [ width fill
        , Background.color <| rgb255 100 100 100
        , Font.color <| rgb 1 1 1
        , Font.bold
        ]
        [ Element.row
            [ centerX
            , spacing 40
            , padding 15
            ]
            [ Element.el [] (text "Home")
            , Element.el [] (text "Weekly Deals")
            , Element.el [] (text "Shop")
            , Element.el [] (text "Help")
            ]
        ]


content =
    Element.column
        [ width fill ]
    <|
        List.repeat 300 <|
            text "Example Content..."
