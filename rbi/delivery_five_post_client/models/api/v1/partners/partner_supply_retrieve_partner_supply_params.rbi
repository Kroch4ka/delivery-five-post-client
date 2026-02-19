# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class PartnerSupplyRetrievePartnerSupplyParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::Partners::PartnerSupplyRetrievePartnerSupplyParams,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Date)) }
            attr_reader :date_from

            sig { params(date_from: Date).void }
            attr_writer :date_from

            sig { returns(T.nilable(Date)) }
            attr_reader :date_to

            sig { params(date_to: Date).void }
            attr_writer :date_to

            # Статус поставки / Supply status
            sig do
              returns(
                T.nilable(
                  DeliveryFivePostClient::API::V1::Partners::SupplyStatus::OrSymbol
                )
              )
            end
            attr_reader :status

            sig do
              params(
                status:
                  DeliveryFivePostClient::API::V1::Partners::SupplyStatus::OrSymbol
              ).void
            end
            attr_writer :status

            sig do
              params(
                date_from: Date,
                date_to: Date,
                status:
                  DeliveryFivePostClient::API::V1::Partners::SupplyStatus::OrSymbol,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              date_from: nil,
              date_to: nil,
              # Статус поставки / Supply status
              status: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  date_from: Date,
                  date_to: Date,
                  status:
                    DeliveryFivePostClient::API::V1::Partners::SupplyStatus::OrSymbol,
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
