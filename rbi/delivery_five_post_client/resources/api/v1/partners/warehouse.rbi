# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class Warehouse
            # Создание нового склада / Create new warehouse
            sig do
              params(
                address: DeliveryFivePostClient::API::V1::Address::OrHash,
                contacts:
                  DeliveryFivePostClient::API::V1::Partners::Contacts::OrHash,
                external_id: String,
                name: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(
                DeliveryFivePostClient::Models::API::V1::Partners::WarehouseCreateResponse
              )
            end
            def create(
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

            # Получение информации о складе / Get warehouse information
            sig do
              params(
                id: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(
                DeliveryFivePostClient::API::V1::Partners::WarehouseInfo
              )
            end
            def retrieve(
              # UUID в формате v4 / UUID in v4 format
              id,
              request_options: {}
            )
            end

            # Обновление информации о складе / Update warehouse information
            sig do
              params(
                id: String,
                address:
                  DeliveryFivePostClient::API::V1::Partners::WarehouseUpdateParams::Address::OrHash,
                contacts:
                  DeliveryFivePostClient::API::V1::Partners::WarehouseUpdateParams::Contacts::OrHash,
                name: String,
                request_options: DeliveryFivePostClient::RequestOptions::OrHash
              ).returns(
                DeliveryFivePostClient::API::V1::Partners::WarehouseInfo
              )
            end
            def update(
              # UUID в формате v4 / UUID in v4 format
              id,
              # Обновление адреса / Address update
              address: nil,
              # Обновление контактов / Contacts update
              contacts: nil,
              # Новое название склада / New warehouse name
              name: nil,
              request_options: {}
            )
            end

            # @api private
            sig do
              params(client: DeliveryFivePostClient::Client).returns(
                T.attached_class
              )
            end
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
