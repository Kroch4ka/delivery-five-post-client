# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class OrderCreate < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute cargoes
          #   Грузоместа / Cargoes
          #
          #   @return [Array<DeliveryFivePostClient::Models::API::V1::Cargo>]
          required :cargoes,
                   -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Cargo] }

          # @!attribute client
          #   Информация о клиенте / Client information
          #
          #   @return [DeliveryFivePostClient::Models::API::V1::ClientInfo]
          required :client, -> { DeliveryFivePostClient::API::V1::ClientInfo }

          # @!attribute cost
          #   Стоимостные параметры заказа / Order cost parameters
          #
          #   @return [DeliveryFivePostClient::Models::API::V1::OrderCost]
          required :cost, -> { DeliveryFivePostClient::API::V1::OrderCost }

          # @!attribute receiver
          #   Точка получения / Receiver location
          #
          #   @return [DeliveryFivePostClient::Models::API::V1::ReceiverLocation]
          required :receiver, -> { DeliveryFivePostClient::API::V1::ReceiverLocation }

          # @!attribute sender_order_id
          #   ID заказа партнера / Partner order ID
          #
          #   @return [String]
          required :sender_order_id, String, api_name: :senderOrderId

          # @!attribute warehouse
          #   Ссылка на склад / Warehouse reference
          #
          #   @return [DeliveryFivePostClient::Models::API::V1::OrderCreate::Warehouse]
          required :warehouse, -> { DeliveryFivePostClient::API::V1::OrderCreate::Warehouse }

          # @!attribute brand_name
          #   Название бренда отправителя / Sender brand name
          #
          #   @return [String, nil]
          optional :brand_name, String, api_name: :brandName

          # @!attribute client_order_id
          #   ID заказа клиента / Client order ID
          #
          #   @return [String, nil]
          optional :client_order_id, String, api_name: :clientOrderId

          # @!method initialize(cargoes:, client:, cost:, receiver:, sender_order_id:, warehouse:, brand_name: nil, client_order_id: nil)
          #   Запрос на создание заказа / Order creation request
          #
          #   @param cargoes [Array<DeliveryFivePostClient::Models::API::V1::Cargo>] Грузоместа / Cargoes
          #
          #   @param client [DeliveryFivePostClient::Models::API::V1::ClientInfo] Информация о клиенте / Client information
          #
          #   @param cost [DeliveryFivePostClient::Models::API::V1::OrderCost] Стоимостные параметры заказа / Order cost parameters
          #
          #   @param receiver [DeliveryFivePostClient::Models::API::V1::ReceiverLocation] Точка получения / Receiver location
          #
          #   @param sender_order_id [String] ID заказа партнера / Partner order ID
          #
          #   @param warehouse [DeliveryFivePostClient::Models::API::V1::OrderCreate::Warehouse] Ссылка на склад / Warehouse reference
          #
          #   @param brand_name [String] Название бренда отправителя / Sender brand name
          #
          #   @param client_order_id [String] ID заказа клиента / Client order ID

          # @see DeliveryFivePostClient::Models::API::V1::OrderCreate#warehouse
          class Warehouse < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:)
            #   Ссылка на склад / Warehouse reference
            #
            #   @param id [String] UUID в формате v4 / UUID in v4 format
          end
        end
      end
    end
  end
end
