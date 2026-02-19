# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerGetActualCargoSizeResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::Models::API::V1::PartnerGetActualCargoSizeResponse,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Фактическая высота / Actual height
          sig { returns(Float) }
          attr_accessor :actual_height

          # Фактическая длина / Actual length
          sig { returns(Float) }
          attr_accessor :actual_length

          # Фактический вес после измерения / Actual weight after measurement
          sig { returns(Float) }
          attr_accessor :actual_weight

          # Фактическая ширина / Actual width
          sig { returns(Float) }
          attr_accessor :actual_width

          # UUID в формате v4 / UUID in v4 format
          sig { returns(String) }
          attr_accessor :cargo_id

          # Ответ с актуальными ВГХ грузоместа / Actual cargo size response
          sig do
            params(
              actual_height: Float,
              actual_length: Float,
              actual_weight: Float,
              actual_width: Float,
              cargo_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Фактическая высота / Actual height
            actual_height:,
            # Фактическая длина / Actual length
            actual_length:,
            # Фактический вес после измерения / Actual weight after measurement
            actual_weight:,
            # Фактическая ширина / Actual width
            actual_width:,
            # UUID в формате v4 / UUID in v4 format
            cargo_id:
          )
          end

          sig do
            override.returns(
              {
                actual_height: Float,
                actual_length: Float,
                actual_weight: Float,
                actual_width: Float,
                cargo_id: String
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
