# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class PartnerSupply
            # Получение сведений о поставке / Get supply information
            #
            # @overload retrieve(supply_id, request_options: {})
            #
            # @param supply_id [String] UUID в формате v4 / UUID in v4 format
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [DeliveryFivePostClient::Models::API::V1::Partners::SupplyInfo]
            #
            # @see DeliveryFivePostClient::Models::API::V1::Partners::PartnerSupplyRetrieveParams
            def retrieve(supply_id, params = {})
              @client.request(
                method: :get,
                path: ["api/v1/partners/partnerSupply/%1$s", supply_id],
                model: DeliveryFivePostClient::API::V1::Partners::SupplyInfo,
                options: params[:request_options]
              )
            end

            # Обновление информации о поставке / Update supply information
            #
            # @overload update(supply_id, cargoes: nil, planned_date: nil, request_options: {})
            #
            # @param supply_id [String] UUID в формате v4 / UUID in v4 format
            #
            # @param cargoes [Array<DeliveryFivePostClient::Models::API::V1::Partners::SupplyCargo>] Грузоместа в поставке / Cargoes
            #
            # @param planned_date [Date] Плановая дата поставки / Planned date
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [DeliveryFivePostClient::Models::API::V1::Partners::SupplyInfo]
            #
            # @see DeliveryFivePostClient::Models::API::V1::Partners::PartnerSupplyUpdateParams
            def update(supply_id, params = {})
              parsed, options =
                DeliveryFivePostClient::API::V1::Partners::PartnerSupplyUpdateParams.dump_request(params)
              @client.request(
                method: :patch,
                path: ["api/v1/partners/partnerSupply/%1$s", supply_id],
                body: parsed,
                model: DeliveryFivePostClient::API::V1::Partners::SupplyInfo,
                options: options
              )
            end

            # Отмена поставки / Cancel supply
            #
            # @overload delete(supply_id, request_options: {})
            #
            # @param supply_id [String] UUID в формате v4 / UUID in v4 format
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [DeliveryFivePostClient::Models::API::V1::Partners::PartnerSupplyDeleteResponse]
            #
            # @see DeliveryFivePostClient::Models::API::V1::Partners::PartnerSupplyDeleteParams
            def delete(supply_id, params = {})
              @client.request(
                method: :delete,
                path: ["api/v1/partners/partnerSupply/%1$s", supply_id],
                model: DeliveryFivePostClient::Models::API::V1::Partners::PartnerSupplyDeleteResponse,
                options: params[:request_options]
              )
            end

            # Получение списка поставок с фильтрацией / Get supplies list with filters
            #
            # @overload retrieve_partner_supply(date_from: nil, date_to: nil, status: nil, request_options: {})
            #
            # @param date_from [Date]
            #
            # @param date_to [Date]
            #
            # @param status [Symbol, DeliveryFivePostClient::Models::API::V1::Partners::SupplyStatus] Статус поставки / Supply status
            #
            # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [DeliveryFivePostClient::Models::API::V1::Partners::PartnerSupplyRetrievePartnerSupplyResponse]
            #
            # @see DeliveryFivePostClient::Models::API::V1::Partners::PartnerSupplyRetrievePartnerSupplyParams
            def retrieve_partner_supply(params = {})
              parsed, options =
                DeliveryFivePostClient::API::V1::Partners::PartnerSupplyRetrievePartnerSupplyParams.dump_request(params)
              @client.request(
                method: :get,
                path: "api/v1/partners/partnerSupply",
                query: parsed.transform_keys(date_from: "dateFrom", date_to: "dateTo"),
                model: DeliveryFivePostClient::Models::API::V1::Partners::PartnerSupplyRetrievePartnerSupplyResponse,
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
