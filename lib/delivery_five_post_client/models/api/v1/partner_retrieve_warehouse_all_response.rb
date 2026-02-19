# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#retrieve_warehouse_all
        class PartnerRetrieveWarehouseAllResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute warehouses
          #   Массив складов / Array of warehouses
          #
          #   @return [Array<DeliveryFivePostClient::Models::API::V1::Partners::WarehouseInfo>]
          required :warehouses,
                   -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Partners::WarehouseInfo] }

          # @!method initialize(warehouses:)
          #   Список складов / Warehouse list
          #
          #   @param warehouses [Array<DeliveryFivePostClient::Models::API::V1::Partners::WarehouseInfo>] Массив складов / Array of warehouses
        end
      end
    end
  end
end
