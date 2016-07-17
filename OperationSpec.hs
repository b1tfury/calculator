module OperationSpec where

import Test.Hspec
import Operation

main :: IO ()
main = hspec $ do
  describe "add" $ do
    it "should return 5 when addition is performed on 3 and 2" $
        add 1 2 `shouldBe` 3
  describe "subtraction" $ do
    it "should return 1 when subtraction is performed on 3 and 2" $
        Operation.subtract 3 2 `shouldBe` 1
  describe "multiplication" $ do
    it "should return 6 when multiplication is performed on 3 and 2" $
        multiply 3 2 `shouldBe` 6
    it "should return 0 when either of operand is zero" $
        multiply 2 0 `shouldBe` 0
  describe "division" $ do
    it "should return 1.5 when division is performed on 3 and 2" $
        divide 3 2 `shouldBe` 1.5
    it "should return Infinity when denominator is 0" $
        divide 3 0 `shouldBe` 1 / 0
