# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class OrderCost < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute assessed_value
          #   Оценочная стоимость заказа / Order assessed value
          #
          #   @return [Float]
          required :assessed_value, Float, api_name: :assessedValue

          # @!attribute payment_currency
          #   Валюта (в текущей версии поддерживается только RUB) / Currency (currently only
          #   RUB is supported)
          #
          #   @return [Symbol, DeliveryFivePostClient::Models::API::V1::Currency]
          required :payment_currency,
                   enum: -> { DeliveryFivePostClient::API::V1::Currency },
                   api_name: :paymentCurrency

          # @!attribute price
          #   Общая стоимость товаров / Total price of items
          #
          #   @return [Float]
          required :price, Float

          # @!attribute delivery_price
          #   Стоимость доставки / Delivery price
          #
          #   @return [Float, nil]
          optional :delivery_price, Float, api_name: :deliveryPrice

          # @!attribute payment_type
          #   Тип оплаты / Payment type
          #
          #   @return [Symbol, DeliveryFivePostClient::Models::API::V1::OrderCost::PaymentType, nil]
          optional :payment_type,
                   enum: -> { DeliveryFivePostClient::API::V1::OrderCost::PaymentType },
                   api_name: :paymentType

          # @!attribute payment_value
          #   Сумма наложенного платежа / Cash on delivery amount
          #
          #   @return [Float, nil]
          optional :payment_value, Float, api_name: :paymentValue

          # @!attribute prepayment_sum
          #   Сумма предоплаты / Prepayment amount
          #
          #   @return [Float, nil]
          optional :prepayment_sum, Float, api_name: :prepaymentSum

          # @!method initialize(assessed_value:, payment_currency:, price:, delivery_price: nil, payment_type: nil, payment_value: nil, prepayment_sum: nil)
          #   Some parameter documentations has been truncated, see
          #   {DeliveryFivePostClient::Models::API::V1::OrderCost} for more details.
          #
          #   Стоимостные параметры заказа / Order cost parameters
          #
          #   @param assessed_value [Float] Оценочная стоимость заказа / Order assessed value
          #
          #   @param payment_currency [Symbol, DeliveryFivePostClient::Models::API::V1::Currency] Валюта (в текущей версии поддерживается только RUB) / Currency (currently only R
          #
          #   @param price [Float] Общая стоимость товаров / Total price of items
          #
          #   @param delivery_price [Float] Стоимость доставки / Delivery price
          #
          #   @param payment_type [Symbol, DeliveryFivePostClient::Models::API::V1::OrderCost::PaymentType] Тип оплаты / Payment type
          #
          #   @param payment_value [Float] Сумма наложенного платежа / Cash on delivery amount
          #
          #   @param prepayment_sum [Float] Сумма предоплаты / Prepayment amount

          # Тип оплаты / Payment type
          #
          # @see DeliveryFivePostClient::Models::API::V1::OrderCost#payment_type
          module PaymentType
            extend DeliveryFivePostClient::Internal::Type::Enum

            PREPAID = :PREPAID
            POSTPAID = :POSTPAID

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
