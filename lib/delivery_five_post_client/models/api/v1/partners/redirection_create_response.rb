# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::Redirection#create
          class RedirectionCreateResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            # @!attribute task_id
            #   UUID в формате v4 / UUID in v4 format
            #
            #   @return [String]
            required :task_id, String, api_name: :taskId

            # @!method initialize(task_id:)
            #   Ответ на запрос переадресации / Redirection response
            #
            #   @param task_id [String] UUID в формате v4 / UUID in v4 format
          end
        end
      end
    end
  end
end
