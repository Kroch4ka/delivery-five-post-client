# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerDeliveryToAddressParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V1::PartnerDeliveryToAddressParams,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Адрес / Address
          sig { returns(DeliveryFivePostClient::API::V1::Address) }
          attr_reader :delivery_address

          sig do
            params(
              delivery_address: DeliveryFivePostClient::API::V1::Address::OrHash
            ).void
          end
          attr_writer :delivery_address

          # Габариты / Dimensions
          sig do
            returns(
              DeliveryFivePostClient::API::V1::PartnerDeliveryToAddressParams::Dimensions
            )
          end
          attr_reader :dimensions

          sig do
            params(
              dimensions:
                DeliveryFivePostClient::API::V1::PartnerDeliveryToAddressParams::Dimensions::OrHash
            ).void
          end
          attr_writer :dimensions

          # UUID в формате v4 / UUID in v4 format
          sig { returns(String) }
          attr_accessor :sender_location_id

          # Вес грузоместа (кг) / Weight
          sig { returns(Float) }
          attr_accessor :weight

          sig do
            params(
              delivery_address:
                DeliveryFivePostClient::API::V1::Address::OrHash,
              dimensions:
                DeliveryFivePostClient::API::V1::PartnerDeliveryToAddressParams::Dimensions::OrHash,
              sender_location_id: String,
              weight: Float,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Адрес / Address
            delivery_address:,
            # Габариты / Dimensions
            dimensions:,
            # UUID в формате v4 / UUID in v4 format
            sender_location_id:,
            # Вес грузоместа (кг) / Weight
            weight:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                delivery_address: DeliveryFivePostClient::API::V1::Address,
                dimensions:
                  DeliveryFivePostClient::API::V1::PartnerDeliveryToAddressParams::Dimensions,
                sender_location_id: String,
                weight: Float,
                request_options: DeliveryFivePostClient::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Dimensions < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::PartnerDeliveryToAddressParams::Dimensions,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Высота (см) / Height
            sig { returns(Float) }
            attr_accessor :height

            # Длина (см) / Length
            sig { returns(Float) }
            attr_accessor :length

            # Ширина (см) / Width
            sig { returns(Float) }
            attr_accessor :width

            # Габариты / Dimensions
            sig do
              params(height: Float, length: Float, width: Float).returns(
                T.attached_class
              )
            end
            def self.new(
              # Высота (см) / Height
              height:,
              # Длина (см) / Length
              length:,
              # Ширина (см) / Width
              width:
            )
            end

            sig do
              override.returns({ height: Float, length: Float, width: Float })
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
