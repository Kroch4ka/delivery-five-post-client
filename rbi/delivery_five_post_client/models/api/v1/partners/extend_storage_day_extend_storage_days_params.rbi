# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class ExtendStorageDayExtendStorageDaysParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::Partners::ExtendStorageDayExtendStorageDaysParams,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Количество дней для продления / Number of days to extend
            sig { returns(Integer) }
            attr_accessor :days

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :order_id

            sig do
              params(
                days: Integer,
                order_id: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Количество дней для продления / Number of days to extend
              days:,
              # UUID в формате v4 / UUID in v4 format
              order_id:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  days: Integer,
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
