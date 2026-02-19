# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerDeliveryToAddressResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::Models::API::V1::PartnerDeliveryToAddressResponse,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Валюта (в текущей версии поддерживается только RUB) / Currency (currently only
          # RUB is supported)
          sig do
            returns(DeliveryFivePostClient::API::V1::Currency::TaggedSymbol)
          end
          attr_accessor :currency

          # Срок доставки (дней) / Delivery time
          sig { returns(Integer) }
          attr_accessor :delivery_days

          # Итоговая стоимость доставки / Total cost
          sig { returns(Float) }
          attr_accessor :total_cost

          # Зона доставки / Delivery zone
          sig { returns(T.nilable(String)) }
          attr_reader :zone_id

          sig { params(zone_id: String).void }
          attr_writer :zone_id

          # Ответ стоимости доставки / Delivery cost response
          sig do
            params(
              currency: DeliveryFivePostClient::API::V1::Currency::OrSymbol,
              delivery_days: Integer,
              total_cost: Float,
              zone_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Валюта (в текущей версии поддерживается только RUB) / Currency (currently only
            # RUB is supported)
            currency:,
            # Срок доставки (дней) / Delivery time
            delivery_days:,
            # Итоговая стоимость доставки / Total cost
            total_cost:,
            # Зона доставки / Delivery zone
            zone_id: nil
          )
          end

          sig do
            override.returns(
              {
                currency:
                  DeliveryFivePostClient::API::V1::Currency::TaggedSymbol,
                delivery_days: Integer,
                total_cost: Float,
                zone_id: String
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
