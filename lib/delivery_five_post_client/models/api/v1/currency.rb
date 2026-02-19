# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # Валюта (в текущей версии поддерживается только RUB) / Currency (currently only
        # RUB is supported)
        module Currency
          extend DeliveryFivePostClient::Internal::Type::Enum

          RUB = :RUB

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
