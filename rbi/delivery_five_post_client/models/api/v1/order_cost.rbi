# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class OrderCost < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V1::OrderCost,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Оценочная стоимость заказа / Order assessed value
          sig { returns(Float) }
          attr_accessor :assessed_value

          # Валюта (в текущей версии поддерживается только RUB) / Currency (currently only
          # RUB is supported)
          sig { returns(DeliveryFivePostClient::API::V1::Currency::OrSymbol) }
          attr_accessor :payment_currency

          # Общая стоимость товаров / Total price of items
          sig { returns(Float) }
          attr_accessor :price

          # Стоимость доставки / Delivery price
          sig { returns(T.nilable(Float)) }
          attr_reader :delivery_price

          sig { params(delivery_price: Float).void }
          attr_writer :delivery_price

          # Тип оплаты / Payment type
          sig do
            returns(
              T.nilable(
                DeliveryFivePostClient::API::V1::OrderCost::PaymentType::OrSymbol
              )
            )
          end
          attr_reader :payment_type

          sig do
            params(
              payment_type:
                DeliveryFivePostClient::API::V1::OrderCost::PaymentType::OrSymbol
            ).void
          end
          attr_writer :payment_type

          # Сумма наложенного платежа / Cash on delivery amount
          sig { returns(T.nilable(Float)) }
          attr_reader :payment_value

          sig { params(payment_value: Float).void }
          attr_writer :payment_value

          # Сумма предоплаты / Prepayment amount
          sig { returns(T.nilable(Float)) }
          attr_reader :prepayment_sum

          sig { params(prepayment_sum: Float).void }
          attr_writer :prepayment_sum

          # Стоимостные параметры заказа / Order cost parameters
          sig do
            params(
              assessed_value: Float,
              payment_currency:
                DeliveryFivePostClient::API::V1::Currency::OrSymbol,
              price: Float,
              delivery_price: Float,
              payment_type:
                DeliveryFivePostClient::API::V1::OrderCost::PaymentType::OrSymbol,
              payment_value: Float,
              prepayment_sum: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # Оценочная стоимость заказа / Order assessed value
            assessed_value:,
            # Валюта (в текущей версии поддерживается только RUB) / Currency (currently only
            # RUB is supported)
            payment_currency:,
            # Общая стоимость товаров / Total price of items
            price:,
            # Стоимость доставки / Delivery price
            delivery_price: nil,
            # Тип оплаты / Payment type
            payment_type: nil,
            # Сумма наложенного платежа / Cash on delivery amount
            payment_value: nil,
            # Сумма предоплаты / Prepayment amount
            prepayment_sum: nil
          )
          end

          sig do
            override.returns(
              {
                assessed_value: Float,
                payment_currency:
                  DeliveryFivePostClient::API::V1::Currency::OrSymbol,
                price: Float,
                delivery_price: Float,
                payment_type:
                  DeliveryFivePostClient::API::V1::OrderCost::PaymentType::OrSymbol,
                payment_value: Float,
                prepayment_sum: Float
              }
            )
          end
          def to_hash
          end

          # Тип оплаты / Payment type
          module PaymentType
            extend DeliveryFivePostClient::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  DeliveryFivePostClient::API::V1::OrderCost::PaymentType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PREPAID =
              T.let(
                :PREPAID,
                DeliveryFivePostClient::API::V1::OrderCost::PaymentType::TaggedSymbol
              )
            POSTPAID =
              T.let(
                :POSTPAID,
                DeliveryFivePostClient::API::V1::OrderCost::PaymentType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  DeliveryFivePostClient::API::V1::OrderCost::PaymentType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
