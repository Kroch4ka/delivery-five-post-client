# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::Warehouse#create
          class WarehouseCreateResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :id, String

            # @!attribute address
            #   Адрес / Address
            #
            #   @return [DeliveryFivePostClient::Models::API::V1::Address]
            required :address, -> { DeliveryFivePostClient::API::V1::Address }

            # @!attribute contacts
            #   Контакты / Contacts
            #
            #   @return [DeliveryFivePostClient::Models::API::V1::Partners::Contacts]
            required :contacts, -> { DeliveryFivePostClient::API::V1::Partners::Contacts }

            # @!attribute external_id
            #   Внешний ID склада партнера / External warehouse ID
            #
            #   @return [String]
            required :external_id, String, api_name: :externalId

            # @!attribute name
            #   Название склада / Warehouse name
            #
            #   @return [String]
            required :name, String

            # @!method initialize(id:, address:, contacts:, external_id:, name:)
            #   Ответ на создание склада / Warehouse creation response
            #
            #   @param id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param address [DeliveryFivePostClient::Models::API::V1::Address] Адрес / Address
            #
            #   @param contacts [DeliveryFivePostClient::Models::API::V1::Partners::Contacts] Контакты / Contacts
            #
            #   @param external_id [String] Внешний ID склада партнера / External warehouse ID
            #
            #   @param name [String] Название склада / Warehouse name
          end
        end
      end
    end
  end
end
