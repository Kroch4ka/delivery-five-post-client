# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class ReceiverLocation < DeliveryFivePostClient::Internal::Type::BaseModel
          # @!attribute location_id
          #   UUID в формате v4 / UUID in v4 format
          #
          #   @return [String, nil]
          optional :location_id, String, api_name: :locationId

          # @!attribute mdm_code
          #   MDM код точки выдачи / Pickup point MDM code
          #
          #   @return [String, nil]
          optional :mdm_code, String, api_name: :mdmCode

          # @!method initialize(location_id: nil, mdm_code: nil)
          #   Точка получения / Receiver location
          #
          #   @param location_id [String] UUID в формате v4 / UUID in v4 format
          #
          #   @param mdm_code [String] MDM код точки выдачи / Pickup point MDM code
        end
      end
    end
  end
end
