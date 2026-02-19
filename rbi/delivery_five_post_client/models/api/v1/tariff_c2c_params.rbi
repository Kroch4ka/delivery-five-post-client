# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class TariffC2cParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V1::TariffC2cParams,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Оценочная стоимость / Assessed value
          sig { returns(Float) }
          attr_accessor :assessed_value

          # UUID в формате v4 / UUID in v4 format
          sig { returns(String) }
          attr_accessor :from_location_id

          # Высота (см) / Height
          sig { returns(Float) }
          attr_accessor :height

          # Длина (см) / Length
          sig { returns(Float) }
          attr_accessor :length

          # UUID в формате v4 / UUID in v4 format
          sig { returns(String) }
          attr_accessor :to_location_id

          # Вес грузоместа (кг) / Weight
          sig { returns(Float) }
          attr_accessor :weight

          # Ширина (см) / Width
          sig { returns(Float) }
          attr_accessor :width

          sig do
            params(
              assessed_value: Float,
              from_location_id: String,
              height: Float,
              length: Float,
              to_location_id: String,
              weight: Float,
              width: Float,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Оценочная стоимость / Assessed value
            assessed_value:,
            # UUID в формате v4 / UUID in v4 format
            from_location_id:,
            # Высота (см) / Height
            height:,
            # Длина (см) / Length
            length:,
            # UUID в формате v4 / UUID in v4 format
            to_location_id:,
            # Вес грузоместа (кг) / Weight
            weight:,
            # Ширина (см) / Width
            width:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                assessed_value: Float,
                from_location_id: String,
                height: Float,
                length: Float,
                to_location_id: String,
                weight: Float,
                width: Float,
                request_options: DeliveryFivePostClient::RequestOptions
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
