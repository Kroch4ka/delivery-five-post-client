# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#get_cargo_status
        class PartnerGetCargoStatusParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          # @!attribute cargo_ids
          #   Массив UUID грузомест / Array of cargo UUIDs
          #
          #   @return [Array<String>, nil]
          optional :cargo_ids, DeliveryFivePostClient::Internal::Type::ArrayOf[String], api_name: :cargoIds

          # @!attribute sender_cargo_ids
          #   Массив ID грузомест партнера / Array of partner cargo IDs
          #
          #   @return [Array<String>, nil]
          optional :sender_cargo_ids,
                   DeliveryFivePostClient::Internal::Type::ArrayOf[String],
                   api_name: :senderCargoIds

          # @!method initialize(cargo_ids: nil, sender_cargo_ids: nil, request_options: {})
          #   @param cargo_ids [Array<String>] Массив UUID грузомест / Array of cargo UUIDs
          #
          #   @param sender_cargo_ids [Array<String>] Массив ID грузомест партнера / Array of partner cargo IDs
          #
          #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
