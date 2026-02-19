# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::ExtendStorageDays#extend_storage_days
          class ExtendStorageDayExtendStorageDaysResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute task_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :task_id, String, api_name: :taskId

            # @!method initialize(task_id:)
            #   Ответ на запрос продления срока хранения / Storage extension response
            #
            #   @param task_id [String] UUID в формате v4 / UUID in v4 format
          end
        end
      end
    end
  end
end
