module Types.PricedOrderLine where

import SharedTypes
import Types.OrderId
import Types.OrderLineId
import Types.ProductCode
import Types.Price
import Types.OrderQuantity

data PricedOrderLine = PricedOrderLine {
  orderLineId :: OrderLineId,
  productCode :: ProductCode,
  quantity :: OrderQuantity,
  linePrice :: Price
} deriving (Show)
