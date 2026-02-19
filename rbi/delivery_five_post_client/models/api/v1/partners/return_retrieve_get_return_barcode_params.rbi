# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class ReturnRetrieveGetReturnBarcodeParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::Partners::ReturnRetrieveGetReturnBarcodeParams,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :order_id

            sig do
              params(
                order_id: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # UUID в формате v4 / UUID in v4 format
              order_id:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  order_id: String,
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
end
