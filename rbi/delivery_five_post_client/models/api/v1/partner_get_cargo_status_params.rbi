# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerGetCargoStatusParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V1::PartnerGetCargoStatusParams,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Массив UUID грузомест / Array of cargo UUIDs
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :cargo_ids

          sig { params(cargo_ids: T::Array[String]).void }
          attr_writer :cargo_ids

          # Массив ID грузомест партнера / Array of partner cargo IDs
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :sender_cargo_ids

          sig { params(sender_cargo_ids: T::Array[String]).void }
          attr_writer :sender_cargo_ids

          sig do
            params(
              cargo_ids: T::Array[String],
              sender_cargo_ids: T::Array[String],
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Массив UUID грузомест / Array of cargo UUIDs
            cargo_ids: nil,
            # Массив ID грузомест партнера / Array of partner cargo IDs
            sender_cargo_ids: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                cargo_ids: T::Array[String],
                sender_cargo_ids: T::Array[String],
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
