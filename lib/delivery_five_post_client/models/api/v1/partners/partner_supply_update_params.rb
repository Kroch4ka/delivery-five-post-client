# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::PartnerSupply#update
          class PartnerSupplyUpdateParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            # @!attribute cargoes
            #   Грузоместа в поставке / Cargoes
            #
            #   @return [Array<DeliveryFivePostClient::Models::API::V1::Partners::SupplyCargo>, nil]
            optional :cargoes,
                     -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V1::Partners::SupplyCargo] }

            # @!attribute planned_date
            #   Плановая дата поставки / Planned date
            #
            #   @return [Date, nil]
            optional :planned_date, Date, api_name: :plannedDate

            # @!method initialize(cargoes: nil, planned_date: nil, request_options: {})
            #   @param cargoes [Array<DeliveryFivePostClient::Models::API::V1::Partners::SupplyCargo>] Грузоместа в поставке / Cargoes
            #
            #   @param planned_date [Date] Плановая дата поставки / Planned date
            #
            #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
