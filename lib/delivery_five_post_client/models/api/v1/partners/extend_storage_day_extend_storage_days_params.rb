# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::ExtendStorageDays#extend_storage_days
          class ExtendStorageDayExtendStorageDaysParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            # @!attribute days
            #   Количество дней для продления / Number of days to extend
            #
            #   @return [Integer]
            required :days, Integer

            # @!attribute order_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :order_id, String, api_name: :orderId

            # @!method initialize(days:, order_id:, request_options: {})
            #   @param days [Integer] Количество дней для продления / Number of days to extend
            #
            #   @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
