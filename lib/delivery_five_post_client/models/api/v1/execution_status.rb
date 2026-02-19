# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # Статусы исполнения заказа / Order execution statuses
        module ExecutionStatus
          extend DeliveryFivePostClient::Internal::Type::Enum

          CREATED = :CREATED
          RECEIVED = :RECEIVED
          RECEIVED_IN_DROP = :RECEIVED_IN_DROP
          RECEIVED_IN_STORE = :RECEIVED_IN_STORE
          RECEIVED_IN_TRANSIT_WAREHOUSE = :RECEIVED_IN_TRANSIT_WAREHOUSE
          SHIPPED = :SHIPPED
          IN_TRANSIT = :IN_TRANSIT
          READY_TO_RECEIVE = :READY_TO_RECEIVE
          DELIVERED = :DELIVERED
          RETURNED = :RETURNED
          REJECTED = :REJECTED
          CANCELLED = :CANCELLED
          LOST = :LOST
          UNCLAIMED = :UNCLAIMED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
