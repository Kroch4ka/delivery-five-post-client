# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::PartnerSupply#create
          class PartnerSupplyCreateParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            # @!attribute cargoes
            #   Грузоместа в поставке / Cargoes
            #
            #   @return [Array<DeliveryFivePostClient::Models::API::V1::Partners::SupplyCargo>]
            required :cargoes,
                     -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Partners::SupplyCargo] }

            # @!attribute planned_date
            #   Плановая дата поставки / Planned date
            #
            #   @return [Date]
            required :planned_date, Date, api_name: :plannedDate

            # @!attribute supply_type
            #   Тип поставки / Supply type
            #
            #   @return [Symbol, DeliveryFivePostClient::Models::API::V1::Partners::SupplyType]
            required :supply_type,
                     enum: -> { DeliveryFivePostClient::API::V1::Partners::SupplyType },
                     api_name: :supplyType

            # @!attribute warehouse_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :warehouse_id, String, api_name: :warehouseId

            # @!method initialize(cargoes:, planned_date:, supply_type:, warehouse_id:, request_options: {})
            #   @param cargoes [Array<DeliveryFivePostClient::Models::API::V1::Partners::SupplyCargo>] Грузоместа в поставке / Cargoes
            #
            #   @param planned_date [Date] Плановая дата поставки / Planned date
            #
            #   @param supply_type [Symbol, DeliveryFivePostClient::Models::API::V1::Partners::SupplyType] Тип поставки / Supply type
            #
            #   @param warehouse_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
