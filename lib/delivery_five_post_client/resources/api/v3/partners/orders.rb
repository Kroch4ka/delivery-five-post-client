# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V3
        class Partners
          class Orders
            # Отмена заказа / Cancel order
            #
            # @overload cancel_order(order_id, request_options: {})
            #
            # @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see DeliveryFivePostClient::Models::API::V3::Partners::OrderCancelOrderParams
            def cancel_order(order_id, params = {})
              @client.request(
                method: :delete,
                path: ["api/v3/partners/orders/%1$s", order_id],
                model: NilClass,
                options: params[:request_options]
              )
            end

            # Универсальное создание заказа / Universal order creation
            #
            # @overload create_order(cargoes:, client:, cost:, receiver:, sender_order_id:, warehouse:, brand_name: nil, client_order_id: nil, request_options: {})
            #
            # @param cargoes [Array<DeliveryFivePostClient::Models::API::V1::Cargo>] Грузоместа / Cargoes
            #
            # @param client [DeliveryFivePostClient::Models::API::V1::ClientInfo] Информация о клиенте / Client information
            #
            # @param cost [DeliveryFivePostClient::Models::API::V1::OrderCost] Стоимостные параметры заказа / Order cost parameters
            #
            # @param receiver [DeliveryFivePostClient::Models::API::V1::ReceiverLocation] Точка получения / Receiver location
            #
            # @param sender_order_id [String] ID заказа партнера / Partner order ID
            #
            # @param warehouse [DeliveryFivePostClient::Models::API::V1::OrderCreate::Warehouse] Ссылка на склад / Warehouse reference
            #
            # @param brand_name [String] Название бренда отправителя / Sender brand name
            #
            # @param client_order_id [String] ID заказа клиента / Client order ID
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [DeliveryFivePostClient::Models::API::V1::OrderCreateResponse]
            #
            # @see DeliveryFivePostClient::Models::API::V3::Partners::OrderCreateOrderParams
            def create_order(params)
              parsed, options = DeliveryFivePostClient::API::V3::Partners::OrderCreateOrderParams.dump_request(params)
              @client.request(
                method: :post,
                path: "api/v3/partners/orders",
                body: parsed,
                model: DeliveryFivePostClient::API::V1::OrderCreateResponse,
                options: options
              )
            end

            # @api private
            #
            # @param client [DeliveryFivePostClient::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
