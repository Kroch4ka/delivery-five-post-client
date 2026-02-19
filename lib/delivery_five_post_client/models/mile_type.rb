# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    # Тип мили доставки / Delivery mile type
    module MileType
      extend DeliveryFivePostClient::Internal::Type::Enum

      FIRST_MILE = :FIRST_MILE
      MIDDLE_MILE = :MIDDLE_MILE
      LAST_MILE = :LAST_MILE
      RETURN_MILE = :RETURN_MILE

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
