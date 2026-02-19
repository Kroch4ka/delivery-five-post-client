# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::PartnerSupply#retrieve_partner_supply
          class PartnerSupplyRetrievePartnerSupplyParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            # @!attribute date_from
            #
            #   @return [Date, nil]
            optional :date_from, Date

            # @!attribute date_to
            #
            #   @return [Date, nil]
            optional :date_to, Date

            # @!attribute status
            #   Статус поставки / Supply status
            #
            #   @return [Symbol, DeliveryFivePostClient::Models::API::V1::Partners::SupplyStatus, nil]
            optional :status, enum: -> { DeliveryFivePostClient::API::V1::Partners::SupplyStatus }

            # @!method initialize(date_from: nil, date_to: nil, status: nil, request_options: {})
            #   @param date_from [Date]
            #
            #   @param date_to [Date]
            #
            #   @param status [Symbol, DeliveryFivePostClient::Models::API::V1::Partners::SupplyStatus] Статус поставки / Supply status
            #
            #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
