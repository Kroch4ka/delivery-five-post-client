# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class Orders
            # @return [DeliveryFivePostClient::Resources::API::V1::Partners::Orders::Cargo]
            attr_reader :cargo

            # Создание заказа C2C (от клиента к клиенту) / Create C2C order (customer to
            # customer)
            #
            # @overload c2c(cargoes:, cost:, receiver:, receiver_location:, sender:, sender_location:, sender_order_id:, client_order_id: nil, request_options: {})
            #
            # @param cargoes [Array<DeliveryFivePostClient::Models::API::V1::Cargo>] Грузоместа / Cargoes
            #
            # @param cost [DeliveryFivePostClient::Models::API::V1::OrderCost] Стоимостные параметры заказа / Order cost parameters
            #
            # @param receiver [DeliveryFivePostClient::Models::API::V1::ClientInfo] Информация о клиенте / Client information
            #
            # @param receiver_location [DeliveryFivePostClient::Models::API::V1::ReceiverLocation] Точка получения / Receiver location
            #
            # @param sender [DeliveryFivePostClient::Models::API::V1::ClientInfo] Информация о клиенте / Client information
            #
            # @param sender_location [DeliveryFivePostClient::Models::API::V1::ReceiverLocation] Точка получения / Receiver location
            #
            # @param sender_order_id [String] ID заказа отправителя / Sender order ID
            #
            # @param client_order_id [String] ID заказа клиента / Client order ID
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [DeliveryFivePostClient::Models::API::V1::Partners::OrderC2cResponse]
            #
            # @see DeliveryFivePostClient::Models::API::V1::Partners::OrderC2cParams
            def c2c(params)
              parsed, options = DeliveryFivePostClient::API::V1::Partners::OrderC2cParams.dump_request(params)
              @client.request(
                method: :post,
                path: "api/v1/partners/orders/c2c",
                body: parsed,
                model: DeliveryFivePostClient::Models::API::V1::Partners::OrderC2cResponse,
                options: options
              )
            end

            # Обновление данных клиента / Update client information
            #
            # @overload update_client_info(order_id, client:, request_options: {})
            #
            # @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            # @param client [DeliveryFivePostClient::Models::API::V1::Partners::OrderUpdateClientInfoParams::Client] Обновление информации о клиенте / Client information update
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see DeliveryFivePostClient::Models::API::V1::Partners::OrderUpdateClientInfoParams
            def update_client_info(order_id, params)
              parsed, options =
                DeliveryFivePostClient::API::V1::Partners::OrderUpdateClientInfoParams.dump_request(params)
              @client.request(
                method: :put,
                path: ["api/v1/partners/orders/%1$s/client-info", order_id],
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Обнуление наложенного платежа / Reset payment value
            #
            # @overload update_payment_value(order_id, payment_value:, request_options: {})
            #
            # @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            # @param payment_value [Float] Новая сумма наложенного платежа / New payment value
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see DeliveryFivePostClient::Models::API::V1::Partners::OrderUpdatePaymentValueParams
            def update_payment_value(order_id, params)
              parsed, options =
                DeliveryFivePostClient::API::V1::Partners::OrderUpdatePaymentValueParams.dump_request(params)
              @client.request(
                method: :put,
                path: ["api/v1/partners/orders/%1$s/paymentValue", order_id],
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # @api private
            #
            # @param client [DeliveryFivePostClient::Client]
            def initialize(client:)
              @client = client
              @cargo = DeliveryFivePostClient::Resources::API::V1::Partners::Orders::Cargo.new(client: client)
            end
          end
        end
      end
    end
  end
end
