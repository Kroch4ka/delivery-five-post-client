# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::PartnerSupply#delete
          class PartnerSupplyDeleteResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute success
            #   Успешность операции / Success
            #
            #   @return [Boolean]
            required :success, DeliveryFivePostClient::Internal::Type::Boolean

            # @!method initialize(success:)
            #   @param success [Boolean] Успешность операции / Success
          end
        end
      end
    end
  end
end
