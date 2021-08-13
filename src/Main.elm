module Main exposing (..)
import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)



-- MAIN


main =
  Browser.sandbox { init = init, update = update, view = view }



-- MODEL

type alias Model = Int

init : Model
init =
  0


-- UPDATE

type Msg = Increment | Decrement | Reset

update : Msg -> Model -> Model 
update msg model =
  case msg of
    Increment ->
      model + 2

    Decrement ->
      model - 2
    
    Reset ->
      model - model


-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ button [ onClick Decrement ] [ text "Subtract 2" ]
    , div [] [ text (String.fromInt model) ]
    , button [ onClick Increment ] [ text "Add 2" ]
    , button [ onClick Reset ] [ text "Reset back to 0" ]
    ]
