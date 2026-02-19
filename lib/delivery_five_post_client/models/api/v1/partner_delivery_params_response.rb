# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#delivery_params
        class PartnerDeliveryParamsResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute zones
          #   Зоны доставки / Delivery zones
          #
          #   @return [Array<DeliveryFivePostClient::Models::API::V1::PartnerDeliveryParamsResponse::Zone>]
          required :zones,
                   -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::PartnerDeliveryParamsResponse::Zone] }

          # @!method initialize(zones:)
          #   Ответ параметров доставки / Delivery params response
          #
          #   @param zones [Array<DeliveryFivePostClient::Models::API::V1::PartnerDeliveryParamsResponse::Zone>] Зоны доставки / Delivery zones

          class Zone < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute city
            #   Город / City
            #
            #   @return [String]
            required :city, String

            # @!attribute is_available
            #   Доступна ли доставка / Is available
            #
            #   @return [Boolean]
            required :is_available, DeliveryFivePostClient::Internal::Type::Boolean, api_name: :isAvailable

            # @!attribute region
            #   Регион / Region
            #
            #   @return [String]
            required :region, String

            # @!attribute zone_id
            #   ID зоны / Zone ID
            #
            #   @return [String]
            required :zone_id, String, api_name: :zoneId

            # @!attribute zone_name
            #   Название зоны / Zone name
            #
            #   @return [String]
            required :zone_name, String, api_name: :zoneName

            # @!attribute max_delivery_days
            #   Максимальный срок доставки (дней) / Max delivery days
            #
            #   @return [Integer, nil]
            optional :max_delivery_days, Integer, api_name: :maxDeliveryDays

            # @!attribute min_delivery_days
            #   Минимальный срок доставки (дней) / Min delivery days
            #
            #   @return [Integer, nil]
            optional :min_delivery_days, Integer, api_name: :minDeliveryDays

            # @!method initialize(city:, is_available:, region:, zone_id:, zone_name:, max_delivery_days: nil, min_delivery_days: nil)
            #   Зона курьерской доставки / Delivery zone
            #
            #   @param city [String] Город / City
            #
            #   @param is_available [Boolean] Доступна ли доставка / Is available
            #
            #   @param region [String] Регион / Region
            #
            #   @param zone_id [String] ID зоны / Zone ID
            #
            #   @param zone_name [String] Название зоны / Zone name
            #
            #   @param max_delivery_days [Integer] Максимальный срок доставки (дней) / Max delivery days
            #
            #   @param min_delivery_days [Integer] Минимальный срок доставки (дней) / Min delivery days
          end
        end
      end
    end
  end
end
