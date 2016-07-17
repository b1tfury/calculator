module OperationSpec where

import Test.Hspec
import Operation

main :: IO ()
main = hspec $ do
  describe "add" $ do
    it "should return 5 when addition is performed on 3 and 2" $
        add 1 2 `shouldBe` 3
