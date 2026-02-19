# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::PartnerSupply#retrieve
          class SupplyInfo < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute cargoes
            #   Грузоместа / Cargoes
            #
            #   @return [Array<DeliveryFivePostClient::Models::API::V1::Partners::SupplyCargo>]
            required :cargoes,
                     -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Partners::SupplyCargo] }

            # @!attribute created_date
            #   Дата создания / Created date
            #
            #   @return [Time]
            required :created_date, Time, api_name: :createdDate

            # @!attribute planned_date
            #   Плановая дата / Planned date
            #
            #   @return [Date]
            required :planned_date, Date, api_name: :plannedDate

            # @!attribute status
            #   Статус поставки / Supply status
            #
            #   @return [Symbol, DeliveryFivePostClient::Models::API::V1::Partners::SupplyStatus]
            required :status, enum: -> { DeliveryFivePostClient::API::V1::Partners::SupplyStatus }

            # @!attribute supply_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :supply_id, String, api_name: :supplyId

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

            # @!attribute actual_date
            #   Фактическая дата / Actual date
            #
            #   @return [Date, nil]
            optional :actual_date, Date, api_name: :actualDate

            # @!attribute updated_date
            #   Дата обновления / Updated date
            #
            #   @return [Time, nil]
            optional :updated_date, Time, api_name: :updatedDate

            # @!method initialize(cargoes:, created_date:, planned_date:, status:, supply_id:, supply_type:, warehouse_id:, actual_date: nil, updated_date: nil)
            #   Информация о поставке / Supply info
            #
            #   @param cargoes [Array<DeliveryFivePostClient::Models::API::V1::Partners::SupplyCargo>] Грузоместа / Cargoes
            #
            #   @param created_date [Time] Дата создания / Created date
            #
            #   @param planned_date [Date] Плановая дата / Planned date
            #
            #   @param status [Symbol, DeliveryFivePostClient::Models::API::V1::Partners::SupplyStatus] Статус поставки / Supply status
            #
            #   @param supply_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param supply_type [Symbol, DeliveryFivePostClient::Models::API::V1::Partners::SupplyType] Тип поставки / Supply type
            #
            #   @param warehouse_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param actual_date [Date] Фактическая дата / Actual date
            #
            #   @param updated_date [Time] Дата обновления / Updated date
          end
        end
      end
    end
  end
end
