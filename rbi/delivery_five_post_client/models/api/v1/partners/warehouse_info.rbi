# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class WarehouseInfo < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::API::V1::Partners::WarehouseInfo,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :id

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

            # Внешний ID склада / External warehouse ID
            sig { returns(String) }
            attr_accessor :external_id

            # Название склада / Warehouse name
            sig { returns(String) }
            attr_accessor :name

            # Информация о складе / Warehouse information
            sig do
              params(
                id: String,
                address: DeliveryFivePostClient::API::V1::Address::OrHash,
                contacts:
                  DeliveryFivePostClient::API::V1::Partners::Contacts::OrHash,
                external_id: String,
                name: String
              ).returns(T.attached_class)
            end
            def self.new(
              # UUID в формате v4 / UUID in v4 format
              id:,
              # Адрес / Address
              address:,
              # Контакты / Contacts
              contacts:,
              # Внешний ID склада / External warehouse ID
              external_id:,
              # Название склада / Warehouse name
              name:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  address: DeliveryFivePostClient::API::V1::Address,
                  contacts: DeliveryFivePostClient::API::V1::Partners::Contacts,
                  external_id: String,
                  name: String
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
