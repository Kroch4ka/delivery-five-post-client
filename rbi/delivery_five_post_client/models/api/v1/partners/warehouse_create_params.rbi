# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class WarehouseCreateParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::Partners::WarehouseCreateParams,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Адрес / Address
            sig { returns(DeliveryFivePostClient::API::V1::Address) }
            attr_reader :address

            sig do
              params(
                address: DeliveryFivePostClient::API::V1::Address::OrHash
              ).void
            end
            attr_writer :address

            # Контакты / Contacts
            sig { returns(DeliveryFivePostClient::API::V1::Partners::Contacts) }
            attr_reader :contacts

            sig do
              params(
                contacts:
                  DeliveryFivePostClient::API::V1::Partners::Contacts::OrHash
              ).void
            end
            attr_writer :contacts

            # Внешний ID склада партнера / External warehouse ID
            sig { returns(String) }
            attr_accessor :external_id

            # Название склада / Warehouse name
            sig { returns(String) }
            attr_accessor :name

            sig do
              params(
                address: DeliveryFivePostClient::API::V1::Address::OrHash,
                contacts:
                  DeliveryFivePostClient::API::V1::Partners::Contacts::OrHash,
                external_id: String,
                name: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Адрес / Address
              address:,
              # Контакты / Contacts
              contacts:,
              # Внешний ID склада партнера / External warehouse ID
              external_id:,
              # Название склада / Warehouse name
              name:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  address: DeliveryFivePostClient::API::V1::Address,
                  contacts: DeliveryFivePostClient::API::V1::Partners::Contacts,
                  external_id: String,
                  name: String,
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
