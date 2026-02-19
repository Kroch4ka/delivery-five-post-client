# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V2
        module Points
          class SlGetC2cDeliveryTermsParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V2::Points::SlGetC2cDeliveryTermsParams,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :from_location_id

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :to_location_id

            sig do
              params(
                from_location_id: String,
                to_location_id: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # UUID в формате v4 / UUID in v4 format
              from_location_id:,
              # UUID в формате v4 / UUID in v4 format
              to_location_id:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  from_location_id: String,
                  to_location_id: String,
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
