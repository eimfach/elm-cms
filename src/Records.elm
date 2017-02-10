module Records exposing (..)

import Dict
import Models exposing (..)


create : String -> String -> Dict.Dict String String
create recordName id =
    Dict.get recordName records
        |> Maybe.map (\fields -> Dict.empty)
        |> Maybe.withDefault Dict.empty


unsafeGet : String -> Record
unsafeGet recordName =
    Dict.get recordName records |> Maybe.withDefault []


records : Dict.Dict String Record
records =
    Dict.fromList
        [ ( "job"
          , [ { id = "slug"
              , type_ = Text
              , showInListView = True
              , default = Nothing
              , isRequired = True
              }
            , { id = "url"
              , type_ = Text
              , showInListView = True
              , default = Nothing
              , isRequired = True
              }
            , { id = "title"
              , type_ = Text
              , showInListView = True
              , default = Nothing
              , isRequired = True
              }
            , { id = "metaDescription"
              , type_ = Text
              , showInListView = False
              , default = Nothing
              , isRequired = True
              }
            , { id = "content"
              , type_ = TextArea
              , showInListView = False
              , default = Nothing
              , isRequired = True
              }
            ]
          )
        , ( "headerLink"
          , [ { id = "label"
              , type_ = Text
              , showInListView = True
              , default = Nothing
              , isRequired = True
              }
            , { id = "url"
              , type_ = Text
              , showInListView = True
              , default = Nothing
              , isRequired = True
              }
            ]
          )
        , ( "footerLink"
          , [ { id = "label"
              , type_ = Text
              , showInListView = True
              , default = Nothing
              , isRequired = True
              }
            , { id = "url"
              , type_ = Text
              , showInListView = True
              , default = Nothing
              , isRequired = True
              }
            ]
          )
        ]
