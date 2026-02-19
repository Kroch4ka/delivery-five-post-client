# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerDeliveryParamsResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::Models::API::V1::PartnerDeliveryParamsResponse,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Зоны доставки / Delivery zones
          sig do
            returns(
              T::Array[
                DeliveryFivePostClient::Models::API::V1::PartnerDeliveryParamsResponse::Zone
              ]
            )
          end
          attr_accessor :zones

          # Ответ параметров доставки / Delivery params response
          sig do
            params(
              zones:
                T::Array[
                  DeliveryFivePostClient::Models::API::V1::PartnerDeliveryParamsResponse::Zone::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Зоны доставки / Delivery zones
            zones:
          )
          end

          sig do
            override.returns(
              {
                zones:
                  T::Array[
                    DeliveryFivePostClient::Models::API::V1::PartnerDeliveryParamsResponse::Zone
                  ]
              }
            )
          end
          def to_hash
          end

          class Zone < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::Models::API::V1::PartnerDeliveryParamsResponse::Zone,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Город / City
            sig { returns(String) }
            attr_accessor :city

            # Доступна ли доставка / Is available
            sig { returns(T::Boolean) }
            attr_accessor :is_available

            # Регион / Region
            sig { returns(String) }
            attr_accessor :region

            # ID зоны / Zone ID
            sig { returns(String) }
            attr_accessor :zone_id

            # Название зоны / Zone name
            sig { returns(String) }
            attr_accessor :zone_name

            # Максимальный срок доставки (дней) / Max delivery days
            sig { returns(T.nilable(Integer)) }
            attr_reader :max_delivery_days

            sig { params(max_delivery_days: Integer).void }
            attr_writer :max_delivery_days

            # Минимальный срок доставки (дней) / Min delivery days
            sig { returns(T.nilable(Integer)) }
            attr_reader :min_delivery_days

            sig { params(min_delivery_days: Integer).void }
            attr_writer :min_delivery_days

            # Зона курьерской доставки / Delivery zone
            sig do
              params(
                city: String,
                is_available: T::Boolean,
                region: String,
                zone_id: String,
                zone_name: String,
                max_delivery_days: Integer,
                min_delivery_days: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # Город / City
              city:,
              # Доступна ли доставка / Is available
              is_available:,
              # Регион / Region
              region:,
              # ID зоны / Zone ID
              zone_id:,
              # Название зоны / Zone name
              zone_name:,
              # Максимальный срок доставки (дней) / Max delivery days
              max_delivery_days: nil,
              # Минимальный срок доставки (дней) / Min delivery days
              min_delivery_days: nil
            )
            end

            sig do
              override.returns(
                {
                  city: String,
                  is_available: T::Boolean,
                  region: String,
                  zone_id: String,
                  zone_name: String,
                  max_delivery_days: Integer,
                  min_delivery_days: Integer
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
