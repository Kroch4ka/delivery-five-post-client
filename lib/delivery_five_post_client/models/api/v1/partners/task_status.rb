# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # Статус задачи / Task status
          module TaskStatus
            extend DeliveryFivePostClient::Internal::Type::Enum

            PROCESSING = :PROCESSING
            COMPLETED = :COMPLETED
            ERROR = :ERROR

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
