# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class Warehouse
            # Создание нового склада / Create new warehouse
            #
            # @overload create(address:, contacts:, external_id:, name:, request_options: {})
            #
            # @param address [DeliveryFivePostClient::Models::API::V1::Address] Адрес / Address
            #
            # @param contacts [DeliveryFivePostClient::Models::API::V1::Partners::Contacts] Контакты / Contacts
            #
            # @param external_id [String] Внешний ID склада партнера / External warehouse ID
            #
            # @param name [String] Название склада / Warehouse name
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [DeliveryFivePostClient::Models::API::V1::Partners::WarehouseCreateResponse]
            #
            # @see DeliveryFivePostClient::Models::API::V1::Partners::WarehouseCreateParams
            def create(params)
              parsed, options = DeliveryFivePostClient::API::V1::Partners::WarehouseCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "api/v1/partners/warehouse",
                body: parsed,
                model: DeliveryFivePostClient::Models::API::V1::Partners::WarehouseCreateResponse,
                options: options
              )
            end

            # Получение информации о складе / Get warehouse information
            #
            # @overload retrieve(id, request_options: {})
            #
            # @param id [String] UUID в формате v4 / UUID in v4 format
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [DeliveryFivePostClient::Models::API::V1::Partners::WarehouseInfo]
            #
            # @see DeliveryFivePostClient::Models::API::V1::Partners::WarehouseRetrieveParams
            def retrieve(id, params = {})
              @client.request(
                method: :get,
                path: ["api/v1/partners/warehouse/%1$s", id],
                model: DeliveryFivePostClient::API::V1::Partners::WarehouseInfo,
                options: params[:request_options]
              )
            end

            # Обновление информации о складе / Update warehouse information
            #
            # @overload update(id, address: nil, contacts: nil, name: nil, request_options: {})
            #
            # @param id [String] UUID в формате v4 / UUID in v4 format
            #
            # @param address [DeliveryFivePostClient::Models::API::V1::Partners::WarehouseUpdateParams::Address] Обновление адреса / Address update
            #
            # @param contacts [DeliveryFivePostClient::Models::API::V1::Partners::WarehouseUpdateParams::Contacts] Обновление контактов / Contacts update
            #
            # @param name [String] Новое название склада / New warehouse name
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [DeliveryFivePostClient::Models::API::V1::Partners::WarehouseInfo]
            #
            # @see DeliveryFivePostClient::Models::API::V1::Partners::WarehouseUpdateParams
            def update(id, params = {})
              parsed, options = DeliveryFivePostClient::API::V1::Partners::WarehouseUpdateParams.dump_request(params)
              @client.request(
                method: :put,
                path: ["api/v1/partners/warehouse/%1$s", id],
                body: parsed,
                model: DeliveryFivePostClient::API::V1::Partners::WarehouseInfo,
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
