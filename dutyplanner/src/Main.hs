import System.Environment ( getArgs )
import System.Random ( randomRIO )
import Data.Time
import DutyPlanner ( makeDutyPlan, prettyDuty )

main = do
  args <- getArgs
  let start   = parseTimeOrError False defaultTimeLocale "%Y-%m-%d" (head args)
  let end     = parseTimeOrError False defaultTimeLocale "%Y-%m-%d" (args !! 1)
  let personsFileName = args !! 2
  raw_persons <- readFile personsFileName
  let persons = words raw_persons
  rndNumber <- randomRIO (0, length persons)
  putStrLn $ prettyDuty $ makeDutyPlan persons [start..end] rndNumber
 
