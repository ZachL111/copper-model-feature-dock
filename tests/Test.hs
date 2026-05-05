import PortfolioCore

expect :: Bool -> IO ()
expect True = pure ()
expect False = error "fixture mismatch"

main :: IO ()
main = do
  let signalcase_1 = Signal 89 99 12 23 9
  expect (score signalcase_1 == 130)
  expect (classify signalcase_1 == "review")
  let signalcase_2 = Signal 91 97 13 25 4
  expect (score signalcase_2 == 102)
  expect (classify signalcase_2 == "review")
  let signalcase_3 = Signal 95 97 21 23 4
  expect (score signalcase_3 == 98)
  expect (classify signalcase_3 == "review")
