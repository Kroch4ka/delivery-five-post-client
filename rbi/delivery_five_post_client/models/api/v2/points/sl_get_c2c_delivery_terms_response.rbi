# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V2
        module Points
          class SlGetC2cDeliveryTermsResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::Models::API::V2::Points::SlGetC2cDeliveryTermsResponse,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Максимальный срок доставки (дней) / Max delivery days
            sig { returns(Integer) }
            attr_accessor :max_delivery_days

            # Минимальный срок доставки (дней) / Min delivery days
            sig { returns(Integer) }
            attr_accessor :min_delivery_days

            # Логистическая схема / Logistics scheme
            sig { returns(T.nilable(String)) }
            attr_reader :logistics_scheme

            sig { params(logistics_scheme: String).void }
            attr_writer :logistics_scheme

            # Ответ сроков доставки C2C / C2C delivery terms response
            sig do
              params(
                max_delivery_days: Integer,
                min_delivery_days: Integer,
                logistics_scheme: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Максимальный срок доставки (дней) / Max delivery days
              max_delivery_days:,
              # Минимальный срок доставки (дней) / Min delivery days
              min_delivery_days:,
              # Логистическая схема / Logistics scheme
              logistics_scheme: nil
            )
            end

            sig do
              override.returns(
                {
                  max_delivery_days: Integer,
                  min_delivery_days: Integer,
                  logistics_scheme: String
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
end
