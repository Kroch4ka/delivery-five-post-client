# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class ExtendStorageDayStatusParams < DeliveryFivePostClient::Models::API::V1::Partners::TaskStatusRequest
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::Partners::ExtendStorageDayStatusParams,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            sig do
              params(
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(request_options: {})
            end

            sig do
              override.returns(
                { request_options: DeliveryFivePostClient::RequestOptions }
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
