# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#pickup_points
        class PartnerPickupPointsParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          # @!attribute active
          #   Фильтр по активности / Filter by active status
          #
          #   @return [Boolean, nil]
          optional :active, DeliveryFivePostClient::Internal::Type::Boolean

          # @!attribute city
          #   Фильтр по городу / Filter by city
          #
          #   @return [String, nil]
          optional :city, String

          # @!attribute mdm_code
          #   Поиск по MDM коду / Search by MDM code
          #
          #   @return [String, nil]
          optional :mdm_code, String, api_name: :mdmCode

          # @!attribute ready
          #   Фильтр по готовности / Filter by ready status
          #
          #   @return [Boolean, nil]
          optional :ready, DeliveryFivePostClient::Internal::Type::Boolean

          # @!attribute region
          #   Фильтр по региону / Filter by region
          #
          #   @return [String, nil]
          optional :region, String

          # @!method initialize(active: nil, city: nil, mdm_code: nil, ready: nil, region: nil, request_options: {})
          #   @param active [Boolean] Фильтр по активности / Filter by active status
          #
          #   @param city [String] Фильтр по городу / Filter by city
          #
          #   @param mdm_code [String] Поиск по MDM коду / Search by MDM code
          #
          #   @param ready [Boolean] Фильтр по готовности / Filter by ready status
          #
          #   @param region [String] Фильтр по региону / Filter by region
          #
          #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
