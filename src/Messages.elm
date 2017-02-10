module Messages exposing (..)

import Http
import Time
import Routes exposing (Route)


-- String arguments in tagged unions represent the record name first and its id second


type Msg
    = ChangeRoute Route
    | Navigate String
    | ChangeField String String
    | RequestSave
    | RequestUpdate
    | RequestDelete String String
    | ReceiveHttp (Result Http.Error String)
    | RequestNewRecordId String
    | ReceiveNewRecordId String
    | Tick Time.Time
