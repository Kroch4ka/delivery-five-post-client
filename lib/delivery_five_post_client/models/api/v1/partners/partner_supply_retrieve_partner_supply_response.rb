# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::PartnerSupply#retrieve_partner_supply
          class PartnerSupplyRetrievePartnerSupplyResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute supplies
            #   Поставки / Supplies
            #
            #   @return [Array<DeliveryFivePostClient::Models::API::V1::Partners::SupplyInfo>]
            required :supplies,
                     -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Partners::SupplyInfo] }

            # @!attribute total_count
            #   Общее количество / Total count
            #
            #   @return [Integer]
            required :total_count, Integer, api_name: :totalCount

            # @!method initialize(supplies:, total_count:)
            #   Список поставок / Supplies list
            #
            #   @param supplies [Array<DeliveryFivePostClient::Models::API::V1::Partners::SupplyInfo>] Поставки / Supplies
            #
            #   @param total_count [Integer] Общее количество / Total count
          end
        end
      end
    end
  end
end
