# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class GetLabelStatusBySenderOrderIDsParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V1::GetLabelStatusBySenderOrderIDsParams,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Массив ID заказов партнера / Array of partner order IDs
          sig { returns(T::Array[String]) }
          attr_accessor :sender_order_ids

          sig do
            params(
              sender_order_ids: T::Array[String],
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Массив ID заказов партнера / Array of partner order IDs
            sender_order_ids:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                sender_order_ids: T::Array[String],
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
