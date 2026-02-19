# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::Orders#c2c
          class OrderC2cParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            # @!attribute cargoes
            #   Грузоместа / Cargoes
            #
            #   @return [Array<DeliveryFivePostClient::Models::API::V1::Cargo>]
            required :cargoes,
                     -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Cargo] }

            # @!attribute cost
            #   Стоимостные параметры заказа / Order cost parameters
            #
            #   @return [DeliveryFivePostClient::Models::API::V1::OrderCost]
            required :cost, -> { DeliveryFivePostClient::API::V1::OrderCost }

            # @!attribute receiver
            #   Информация о клиенте / Client information
            #
            #   @return [DeliveryFivePostClient::Models::API::V1::ClientInfo]
            required :receiver, -> { DeliveryFivePostClient::API::V1::ClientInfo }

            # @!attribute receiver_location
            #   Точка получения / Receiver location
            #
            #   @return [DeliveryFivePostClient::Models::API::V1::ReceiverLocation]
            required :receiver_location,
                     -> { DeliveryFivePostClient::API::V1::ReceiverLocation },
                     api_name: :receiverLocation

            # @!attribute sender
            #   Информация о клиенте / Client information
            #
            #   @return [DeliveryFivePostClient::Models::API::V1::ClientInfo]
            required :sender, -> { DeliveryFivePostClient::API::V1::ClientInfo }

            # @!attribute sender_location
            #   Точка получения / Receiver location
            #
            #   @return [DeliveryFivePostClient::Models::API::V1::ReceiverLocation]
            required :sender_location,
                     -> { DeliveryFivePostClient::API::V1::ReceiverLocation },
                     api_name: :senderLocation

            # @!attribute sender_order_id
            #   ID заказа отправителя / Sender order ID
            #
            #   @return [String]
            required :sender_order_id, String, api_name: :senderOrderId

            # @!attribute client_order_id
            #   ID заказа клиента / Client order ID
            #
            #   @return [String, nil]
            optional :client_order_id, String, api_name: :clientOrderId

            # @!method initialize(cargoes:, cost:, receiver:, receiver_location:, sender:, sender_location:, sender_order_id:, client_order_id: nil, request_options: {})
            #   @param cargoes [Array<DeliveryFivePostClient::Models::API::V1::Cargo>] Грузоместа / Cargoes
            #
            #   @param cost [DeliveryFivePostClient::Models::API::V1::OrderCost] Стоимостные параметры заказа / Order cost parameters
            #
            #   @param receiver [DeliveryFivePostClient::Models::API::V1::ClientInfo] Информация о клиенте / Client information
            #
            #   @param receiver_location [DeliveryFivePostClient::Models::API::V1::ReceiverLocation] Точка получения / Receiver location
            #
            #   @param sender [DeliveryFivePostClient::Models::API::V1::ClientInfo] Информация о клиенте / Client information
            #
            #   @param sender_location [DeliveryFivePostClient::Models::API::V1::ReceiverLocation] Точка получения / Receiver location
            #
            #   @param sender_order_id [String] ID заказа отправителя / Sender order ID
            #
            #   @param client_order_id [String] ID заказа клиента / Client order ID
            #
            #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
