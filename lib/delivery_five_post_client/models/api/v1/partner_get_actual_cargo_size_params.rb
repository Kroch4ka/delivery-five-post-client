# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # @see DeliveryFivePostClient::Resources::API::V1::Partners#get_actual_cargo_size
        class PartnerGetActualCargoSizeParams < DeliveryFivePostClient::Internal::Type::BaseModel
          extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
          include DeliveryFivePostClient::Internal::Type::RequestParameters

          # @!attribute cargo_id
          #   UUID в формате v4 / UUID in v4 format
          #
          #   @return [String]
          required :cargo_id, String, api_name: :cargoId

          # @!method initialize(cargo_id:, request_options: {})
          #   @param cargo_id [String] UUID в формате v4 / UUID in v4 format
          #
          #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
