module Main exposing (main)

import Browser
import Browser.Events
import Html exposing (..)
import Html.Events exposing (onClick)
import Random


type alias Flags =
    { myFlag : String
    }


type alias Model =
    { txt : String
    }


type Msg
    = Zahlerzeugt Int
    | ErzeugeZahl


init : Flags -> ( Model, Cmd Msg )
init flags =
    ( { txt = flags.myFlag 
      }
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none)


view : Model -> Html Msg
view model =
    div []
        [ text model.txt]


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
