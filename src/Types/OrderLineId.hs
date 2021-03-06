-- An Id for OrderLines. Constrained to be a non-empty string < 10 chars
module Types.OrderLineId(
  OrderLineId, create, value
) where

newtype OrderLineId = OrderLineId String deriving (Eq, Show)

create :: String -> Either String OrderLineId
create value | null value = Left "OrderLineId must not be empty"
             | length value > 10 = Left "OrderLineId must not be more than 10 chars"
             | otherwise = Right $ OrderLineId value 

value :: OrderLineId -> String
value (OrderLineId str) = str
