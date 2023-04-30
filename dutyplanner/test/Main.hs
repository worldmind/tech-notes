module Main where

import DutyPlanner
import Test.HUnit
import Data.Time.Calendar


persons = ["ashrub","scripter","iph","kaktus"]
start   = (fromGregorian 2014 06 01)
end     = (fromGregorian 2014 06 04)
days    = [start..end]

duty = [(fromGregorian 2014 06 01,"ashrub"),(fromGregorian 2014 06 02,"scripter"),(fromGregorian 2014 06 03,"iph"),(fromGregorian 2014 06 04,"kaktus")]

description = "Число дежурных равно числу дней, исключений и пожеланий нет"

test1 = TestCase ( assertEqual description duty (planDuty persons days) )

main = runTestTT test1

