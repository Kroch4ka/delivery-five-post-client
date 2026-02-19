# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::ExtendStorageDays#status
          class TaskStatusResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute status
            #   Статус задачи / Task status
            #
            #   @return [Symbol, DeliveryFivePostClient::Models::API::V1::Partners::TaskStatus]
            required :status, enum: -> { DeliveryFivePostClient::API::V1::Partners::TaskStatus }

            # @!attribute task_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :task_id, String, api_name: :taskId

            # @!attribute error_message
            #   Сообщение об ошибке / Error message
            #
            #   @return [String, nil]
            optional :error_message, String, api_name: :errorMessage

            # @!method initialize(status:, task_id:, error_message: nil)
            #   Ответ со статусом задачи / Task status response
            #
            #   @param status [Symbol, DeliveryFivePostClient::Models::API::V1::Partners::TaskStatus] Статус задачи / Task status
            #
            #   @param task_id [String] UUID в формате v4 / UUID in v4 format
            #
            #   @param error_message [String] Сообщение об ошибке / Error message
          end
        end
      end
    end
  end
end
