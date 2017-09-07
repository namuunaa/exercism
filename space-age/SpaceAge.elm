module SpaceAge exposing (..)


type Planet
    = Mercury
    | Venus
    | Earth
    | Mars
    | Jupiter
    | Saturn
    | Uranus
    | Neptune


ageOn : Planet -> Float -> Float
ageOn planet ageInseconds =
    case planet of
        Mercury ->
            ageInseconds / (earthYearInSec * orbitalPeriodInEarthYears.mercury)

        Venus ->
            ageInseconds / (earthYearInSec * orbitalPeriodInEarthYears.venus)

        Earth ->
            ageInseconds / (earthYearInSec * orbitalPeriodInEarthYears.earth)

        Mars ->
            ageInseconds / (earthYearInSec * orbitalPeriodInEarthYears.mars)

        Jupiter ->
            ageInseconds / (earthYearInSec * orbitalPeriodInEarthYears.jupiter)

        Saturn ->
            ageInseconds / (earthYearInSec * orbitalPeriodInEarthYears.saturn)

        Uranus ->
            ageInseconds / (earthYearInSec * orbitalPeriodInEarthYears.uranus)

        Neptune ->
            ageInseconds / (earthYearInSec * orbitalPeriodInEarthYears.neptune)


earthYearInSec : Float
earthYearInSec =
    31557600


orbitalPeriodInEarthYears =
    { earth = 1.0
    , mercury = 0.2408467
    , venus = 0.61519726
    , mars = 1.8808158
    , jupiter = 11.862615
    , saturn = 29.447498
    , uranus = 84.016846
    , neptune = 164.79132
    }
