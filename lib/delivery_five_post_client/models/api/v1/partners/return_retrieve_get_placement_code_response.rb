# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::Return#retrieve_get_placement_code
          class ReturnRetrieveGetPlacementCodeResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute placement_code
            #   Код закладки / Placement code
            #
            #   @return [String]
            required :placement_code, String, api_name: :placementCode

            # @!method initialize(placement_code:)
            #   Код размещения возврата / Placement code
            #
            #   @param placement_code [String] Код закладки / Placement code
          end
        end
      end
    end
  end
end
