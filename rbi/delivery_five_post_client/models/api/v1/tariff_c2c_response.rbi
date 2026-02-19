# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class TariffC2cResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::Models::API::V1::TariffC2cResponse,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Валюта (в текущей версии поддерживается только RUB) / Currency (currently only
          # RUB is supported)
          sig do
            returns(DeliveryFivePostClient::API::V1::Currency::TaggedSymbol)
          end
          attr_accessor :currency

          # Стоимость доставки / Delivery cost
          sig { returns(Float) }
          attr_accessor :delivery_cost

          # Срок доставки (дней) / Delivery days
          sig { returns(Integer) }
          attr_accessor :delivery_days

          # Тарифная зона / Rate zone
          sig { returns(T.nilable(String)) }
          attr_reader :rate_zone

          sig { params(rate_zone: String).void }
          attr_writer :rate_zone

          # Ответ расчета стоимости C2C / C2C tariff response
          sig do
            params(
              currency: DeliveryFivePostClient::API::V1::Currency::OrSymbol,
              delivery_cost: Float,
              delivery_days: Integer,
              rate_zone: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Валюта (в текущей версии поддерживается только RUB) / Currency (currently only
            # RUB is supported)
            currency:,
            # Стоимость доставки / Delivery cost
            delivery_cost:,
            # Срок доставки (дней) / Delivery days
            delivery_days:,
            # Тарифная зона / Rate zone
            rate_zone: nil
          )
          end

          sig do
            override.returns(
              {
                currency:
                  DeliveryFivePostClient::API::V1::Currency::TaggedSymbol,
                delivery_cost: Float,
                delivery_days: Integer,
                rate_zone: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
