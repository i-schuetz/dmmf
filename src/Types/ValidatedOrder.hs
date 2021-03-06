module Types.ValidatedOrder where

import SharedTypes
import Data.List.NonEmpty as NEL
import Types.OrderLine
import Types.OrderId
import Types.CustomerInfo
import Types.Address

data ValidatedOrder = ValidatedOrder {
  orderId :: OrderId,
  customerInfo :: CustomerInfo,
  shippingAddress :: Address,
  billingAddress :: Address,
  orderLines :: [OrderLine]
} deriving (Eq, Show)
