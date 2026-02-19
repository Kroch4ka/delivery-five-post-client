# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          # @return [DeliveryFivePostClient::Resources::API::V1::Partners::ExtendStorageDays]
          attr_reader :extend_storage_days

          # @return [DeliveryFivePostClient::Resources::API::V1::Partners::Jwt]
          attr_reader :jwt

          # @return [DeliveryFivePostClient::Resources::API::V1::Partners::Orders]
          attr_reader :orders

          # @return [DeliveryFivePostClient::Resources::API::V1::Partners::PartnerSupply]
          attr_reader :partner_supply

          # @return [DeliveryFivePostClient::Resources::API::V1::Partners::Redirection]
          attr_reader :redirection

          # @return [DeliveryFivePostClient::Resources::API::V1::Partners::Return]
          attr_reader :return_

          # @return [DeliveryFivePostClient::Resources::API::V1::Partners::Tasks]
          attr_reader :tasks

          # @return [DeliveryFivePostClient::Resources::API::V1::Partners::Warehouse]
          attr_reader :warehouse

          # Срок хранения заказа / Order storage expiration
          #
          # @overload retrieve(order_id, request_options: {})
          #
          # @param order_id [String] UUID в формате v4 / UUID in v4 format
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [DeliveryFivePostClient::Models::API::V1::PartnerRetrieveResponse]
          #
          # @see DeliveryFivePostClient::Models::API::V1::PartnerRetrieveParams
          def retrieve(order_id, params = {})
            @client.request(
              method: :get,
              path: ["api/v1/partners/getExpirationDate/%1$s", order_id],
              model: DeliveryFivePostClient::Models::API::V1::PartnerRetrieveResponse,
              options: params[:request_options]
            )
          end

          # @deprecated
          #
          # Создание одноместного заказа (УСТАРЕЛ) / Create single-cargo order (DEPRECATED)
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
          # @see DeliveryFivePostClient::Models::API::V1::PartnerCreateOrderParams
          def create_order(params)
            parsed, options = DeliveryFivePostClient::API::V1::PartnerCreateOrderParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/partners/createOrder",
              body: parsed,
              model: DeliveryFivePostClient::API::V1::OrderCreateResponse,
              options: options
            )
          end

          # Получение географии курьерской доставки до двери / Get courier delivery
          # geography
          #
          # @overload delivery_params(city: nil, region: nil, request_options: {})
          #
          # @param city [String] Город / City
          #
          # @param region [String] Регион / Region
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [DeliveryFivePostClient::Models::API::V1::PartnerDeliveryParamsResponse]
          #
          # @see DeliveryFivePostClient::Models::API::V1::PartnerDeliveryParamsParams
          def delivery_params(params = {})
            parsed, options = DeliveryFivePostClient::API::V1::PartnerDeliveryParamsParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/partners/deliveryParams",
              body: parsed,
              model: DeliveryFivePostClient::Models::API::V1::PartnerDeliveryParamsResponse,
              options: options
            )
          end

          # Расчет итоговой стоимости доставки до адреса / Calculate final delivery cost to
          # address
          #
          # @overload delivery_to_address(delivery_address:, dimensions:, sender_location_id:, weight:, request_options: {})
          #
          # @param delivery_address [DeliveryFivePostClient::Models::API::V1::Address] Адрес / Address
          #
          # @param dimensions [DeliveryFivePostClient::Models::API::V1::PartnerDeliveryToAddressParams::Dimensions] Габариты / Dimensions
          #
          # @param sender_location_id [String] UUID в формате v4 / UUID in v4 format
          #
          # @param weight [Float] Вес грузоместа (кг) / Weight
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [DeliveryFivePostClient::Models::API::V1::PartnerDeliveryToAddressResponse]
          #
          # @see DeliveryFivePostClient::Models::API::V1::PartnerDeliveryToAddressParams
          def delivery_to_address(params)
            parsed, options = DeliveryFivePostClient::API::V1::PartnerDeliveryToAddressParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/partners/deliveryToAddress",
              body: parsed,
              model: DeliveryFivePostClient::Models::API::V1::PartnerDeliveryToAddressResponse,
              options: options
            )
          end

          # Получение актуальных ВГХ / Get actual dimensions
          #
          # @overload get_actual_cargo_size(cargo_id:, request_options: {})
          #
          # @param cargo_id [String] UUID в формате v4 / UUID in v4 format
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [DeliveryFivePostClient::Models::API::V1::PartnerGetActualCargoSizeResponse]
          #
          # @see DeliveryFivePostClient::Models::API::V1::PartnerGetActualCargoSizeParams
          def get_actual_cargo_size(params)
            parsed, options = DeliveryFivePostClient::API::V1::PartnerGetActualCargoSizeParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/partners/getActualCargoSize",
              body: parsed,
              model: DeliveryFivePostClient::Models::API::V1::PartnerGetActualCargoSizeResponse,
              options: options
            )
          end

          # Получение статуса грузомест / Get cargo status
          #
          # @overload get_cargo_status(cargo_ids: nil, sender_cargo_ids: nil, request_options: {})
          #
          # @param cargo_ids [Array<String>] Массив UUID грузомест / Array of cargo UUIDs
          #
          # @param sender_cargo_ids [Array<String>] Массив ID грузомест партнера / Array of partner cargo IDs
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [DeliveryFivePostClient::Models::API::V1::PartnerGetCargoStatusResponse]
          #
          # @see DeliveryFivePostClient::Models::API::V1::PartnerGetCargoStatusParams
          def get_cargo_status(params = {})
            parsed, options = DeliveryFivePostClient::API::V1::PartnerGetCargoStatusParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/partners/getCargoStatus",
              body: parsed,
              model: DeliveryFivePostClient::Models::API::V1::PartnerGetCargoStatusResponse,
              options: options
            )
          end

          # Получение истории статусов заказа / Get order status history
          #
          # @overload get_order_history_mass(order_ids: nil, sender_order_ids: nil, request_options: {})
          #
          # @param order_ids [Array<String>] Массив UUID заказов / Array of order UUIDs
          #
          # @param sender_order_ids [Array<String>] Массив ID заказов партнера / Array of partner order IDs
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse]
          #
          # @see DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassParams
          def get_order_history_mass(params = {})
            parsed, options = DeliveryFivePostClient::API::V1::PartnerGetOrderHistoryMassParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/partners/getOrderHistoryMass",
              body: parsed,
              model: DeliveryFivePostClient::Models::API::V1::PartnerGetOrderHistoryMassResponse,
              options: options
            )
          end

          # Получение актуального статуса заказов / Get current order status
          #
          # @overload get_order_status(order_ids: nil, sender_order_ids: nil, request_options: {})
          #
          # @param order_ids [Array<String>] Массив UUID заказов / Array of order UUIDs
          #
          # @param sender_order_ids [Array<String>] Массив ID заказов партнера / Array of partner order IDs
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [DeliveryFivePostClient::Models::API::V1::PartnerGetOrderStatusResponse]
          #
          # @see DeliveryFivePostClient::Models::API::V1::PartnerGetOrderStatusParams
          def get_order_status(params = {})
            parsed, options = DeliveryFivePostClient::API::V1::PartnerGetOrderStatusParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/partners/getOrderStatus",
              body: parsed,
              model: DeliveryFivePostClient::Models::API::V1::PartnerGetOrderStatusResponse,
              options: options
            )
          end

          # Получение чеков / Get receipts
          #
          # @overload get_receipts(order_ids:, request_options: {})
          #
          # @param order_ids [Array<String>] Массив UUID заказов / Array of order UUIDs
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse]
          #
          # @see DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsParams
          def get_receipts(params)
            parsed, options = DeliveryFivePostClient::API::V1::PartnerGetReceiptsParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/partners/getReceipts",
              body: parsed,
              model: DeliveryFivePostClient::Models::API::V1::PartnerGetReceiptsResponse,
              options: options
            )
          end

          # Информация о переадресации / Redirection information
          #
          # @overload get_receiver_locations(order_ids:, request_options: {})
          #
          # @param order_ids [Array<String>] Массив UUID заказов / Array of order UUIDs
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [DeliveryFivePostClient::Models::API::V1::PartnerGetReceiverLocationsResponse]
          #
          # @see DeliveryFivePostClient::Models::API::V1::PartnerGetReceiverLocationsParams
          def get_receiver_locations(params)
            parsed, options = DeliveryFivePostClient::API::V1::PartnerGetReceiverLocationsParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/partners/getReceiverLocations",
              body: parsed,
              model: DeliveryFivePostClient::Models::API::V1::PartnerGetReceiverLocationsResponse,
              options: options
            )
          end

          # Получение кода выдачи / Get security code
          #
          # @overload get_security_code(order_ids:, request_options: {})
          #
          # @param order_ids [Array<String>] Массив UUID заказов / Array of order UUIDs
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [DeliveryFivePostClient::Models::API::V1::PartnerGetSecurityCodeResponse]
          #
          # @see DeliveryFivePostClient::Models::API::V1::PartnerGetSecurityCodeParams
          def get_security_code(params)
            parsed, options = DeliveryFivePostClient::API::V1::PartnerGetSecurityCodeParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/partners/getSecurityCode",
              body: parsed,
              model: DeliveryFivePostClient::Models::API::V1::PartnerGetSecurityCodeResponse,
              options: options
            )
          end

          # Получение этикеток / Get labels
          #
          # @overload order_labels(order_ids:, format_: nil, unified: nil, request_options: {})
          #
          # @param order_ids [Array<String>] Массив UUID заказов / Array of order UUIDs
          #
          # @param format_ [Symbol, DeliveryFivePostClient::Models::API::V1::PartnerOrderLabelsParams::Format] Формат этикетки / Label format
          #
          # @param unified [Boolean] Объединить все этикетки в один файл / Unify all labels in one file
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [DeliveryFivePostClient::Models::API::V1::PartnerOrderLabelsResponse]
          #
          # @see DeliveryFivePostClient::Models::API::V1::PartnerOrderLabelsParams
          def order_labels(params)
            parsed, options = DeliveryFivePostClient::API::V1::PartnerOrderLabelsParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/partners/orderLabels",
              body: parsed,
              model: DeliveryFivePostClient::Models::API::V1::PartnerOrderLabelsResponse,
              options: options
            )
          end

          # Получение списка точек выдачи / Get pickup points list
          #
          # @overload pickup_points(active: nil, city: nil, mdm_code: nil, ready: nil, region: nil, request_options: {})
          #
          # @param active [Boolean] Фильтр по активности / Filter by active status
          #
          # @param city [String] Фильтр по городу / Filter by city
          #
          # @param mdm_code [String] Поиск по MDM коду / Search by MDM code
          #
          # @param ready [Boolean] Фильтр по готовности / Filter by ready status
          #
          # @param region [String] Фильтр по региону / Filter by region
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [DeliveryFivePostClient::Models::API::V1::PartnerPickupPointsResponse]
          #
          # @see DeliveryFivePostClient::Models::API::V1::PartnerPickupPointsParams
          def pickup_points(params = {})
            parsed, options = DeliveryFivePostClient::API::V1::PartnerPickupPointsParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v1/partners/pickupPoints",
              body: parsed,
              model: DeliveryFivePostClient::Models::API::V1::PartnerPickupPointsResponse,
              options: options
            )
          end

          # Получение списка всех складов / Get list of all warehouses
          #
          # @overload retrieve_warehouse_all(request_options: {})
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [DeliveryFivePostClient::Models::API::V1::PartnerRetrieveWarehouseAllResponse]
          #
          # @see DeliveryFivePostClient::Models::API::V1::PartnerRetrieveWarehouseAllParams
          def retrieve_warehouse_all(params = {})
            @client.request(
              method: :get,
              path: "api/v1/partners/warehouseAll",
              model: DeliveryFivePostClient::Models::API::V1::PartnerRetrieveWarehouseAllResponse,
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [DeliveryFivePostClient::Client]
          def initialize(client:)
            @client = client
            @extend_storage_days =
              DeliveryFivePostClient::Resources::API::V1::Partners::ExtendStorageDays.new(client: client)
            @jwt = DeliveryFivePostClient::Resources::API::V1::Partners::Jwt.new(client: client)
            @orders = DeliveryFivePostClient::Resources::API::V1::Partners::Orders.new(client: client)
            @partner_supply = DeliveryFivePostClient::Resources::API::V1::Partners::PartnerSupply.new(client: client)
            @redirection = DeliveryFivePostClient::Resources::API::V1::Partners::Redirection.new(client: client)
            @return_ = DeliveryFivePostClient::Resources::API::V1::Partners::Return.new(client: client)
            @tasks = DeliveryFivePostClient::Resources::API::V1::Partners::Tasks.new(client: client)
            @warehouse = DeliveryFivePostClient::Resources::API::V1::Partners::Warehouse.new(client: client)
          end
        end
      end
    end
  end
end
