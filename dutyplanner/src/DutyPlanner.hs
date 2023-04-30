module DutyPlanner where

import Data.List( zip, permutations, intercalate )
import Data.Time
import Data.Time.Format ( formatTime )
import Data.Time.Calendar

type Person   = String
type Persons  = [Person]
type DutyDays = [Day]
type DutyPlan = [(Day, Person)]
type RandomInteger = Int

makeDutyPlan :: Persons -> DutyDays -> RandomInteger -> DutyPlan
makeDutyPlan persons4duty days rndint = zip days unlimitedHumans
  where
    unlimitedHumans = cycle $ shuffle persons4duty rndint

shuffle :: Persons -> RandomInteger -> Persons
shuffle persons4duty rndint = permutations persons4duty !! rndint

prettyDuty :: DutyPlan -> String
prettyDuty plan = intercalate "\n" (map joinTuple plan)

joinTuple :: (Day, Person) -> String
joinTuple tuple = formatTime defaultTimeLocale "%Y-%m-%d" (fst tuple) ++ ", " ++ snd tuple
