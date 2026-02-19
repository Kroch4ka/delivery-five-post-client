# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # Статус поставки / Supply status
          module SupplyStatus
            extend DeliveryFivePostClient::Internal::Type::Enum

            CREATED = :CREATED
            IN_PROGRESS = :IN_PROGRESS
            COMPLETED = :COMPLETED
            CANCELLED = :CANCELLED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
