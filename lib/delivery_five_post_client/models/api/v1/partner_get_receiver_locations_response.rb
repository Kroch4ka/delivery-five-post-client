# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#get_receiver_locations
        class PartnerGetReceiverLocationsResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute redirections
          #   Массив переадресаций / Array of redirections
          #
          #   @return [Array<DeliveryFivePostClient::Models::API::V1::PartnerGetReceiverLocationsResponse::Redirection>]
          required :redirections,
                   -> { DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::Models::API::V1::PartnerGetReceiverLocationsResponse::Redirection] }

          # @!method initialize(redirections:)
          #   Ответ с информацией о переадресациях / Receiver locations response
          #
          #   @param redirections [Array<DeliveryFivePostClient::Models::API::V1::PartnerGetReceiverLocationsResponse::Redirection>] Массив переадресаций / Array of redirections

          class Redirection < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute from_location_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :from_location_id, String, api_name: :fromLocationId

            # @!attribute order_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :order_id, String, api_name: :orderId

            # @!attribute redirection_date
            #   Дата переадресации / Redirection date
            #
            #   @return [Time]
            required :redirection_date, Time, api_name: :redirectionDate

            # @!attribute to_location_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :to_location_id, String, api_name: :toLocationId

            # @!method initialize(from_location_id:, order_id:, redirection_date:, to_location_id:)
            #   Информация о переадресации / Redirection information
            #
            #   @param from_location_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param order_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param redirection_date [Time] Дата переадресации / Redirection date
            #
            #   @param to_location_id [String] UUID в формате v4 / UUID in v4 format
          end
        end
      end
    end
  end
end
