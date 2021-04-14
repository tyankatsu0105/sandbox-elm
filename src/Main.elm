module Main exposing (main)


import Browser
import Html exposing (..)
import Html.Events exposing (onClick)

-- Main


main : Program () Model Msg
main = Browser.sandbox {init = init, update = update, view = view}

-- Model


type alias Model = Int

init:Model
init = 0

-- Update

type Msg = Increment | Decrement | Reset | Increment10

update:Msg -> Model -> Model

update msg model = 
  case msg of
    Increment 
      -> model + 1
    Decrement 
      -> model - 1
    Reset
      -> init
    Increment10
      -> model + 10

-- View

view:Model -> Html Msg
view model =
  div []
    [ button [onClick Decrement] [text "-"]
    , p [] [text (String.fromInt model)]
    , button [onClick Increment] [text "+"]
    , button [onClick Reset] [text "Reset"]
    , button [onClick Increment10] [text "+10"]
    ]