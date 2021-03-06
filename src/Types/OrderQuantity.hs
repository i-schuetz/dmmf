module Types.OrderQuantity(
  OrderQuantity(UnitQuantity, KilogramQuantity), 
  value
) where

import qualified Types.UnitQuantity as UnitQuantity
import qualified Types.KilogramQuantity as KilogramQuantity

-- A Quantity is either a Unit or a Kilogram
data OrderQuantity = UnitQuantity UnitQuantity.UnitQuantity | 
  KilogramQuantity KilogramQuantity.KilogramQuantity deriving (Eq, Show)

value :: OrderQuantity -> Double
value (UnitQuantity quantity) = fromIntegral $ UnitQuantity.value quantity
value (KilogramQuantity quantity) = KilogramQuantity.value quantity
