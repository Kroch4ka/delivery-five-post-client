# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Orders
            # Ставка НДС (%) / VAT rate (%)
            module VatRate
              extend DeliveryFivePostClient::Internal::Type::Enum

              VAT_RATE_0 = 0
              VAT_RATE_5 = 5
              VAT_RATE_7 = 7
              VAT_RATE_10 = 10
              VAT_RATE_20 = 20
              VAT_RATE_22 = 22

              # @!method self.values
              #   @return [Array<Float>]
            end
          end
        end
      end
    end
  end
end
