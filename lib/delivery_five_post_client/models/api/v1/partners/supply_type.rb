# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # Тип поставки / Supply type
          module SupplyType
            extend DeliveryFivePostClient::Internal::Type::Enum

            PLANNED = :PLANNED
            UNPLANNED = :UNPLANNED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
