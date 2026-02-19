# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Tasks
            module Report
              # @see DeliveryFivePostClient::Resources::API::V1::Partners::Tasks::Report::Avds#result
              class AvdResultParams < DeliveryFivePostClient::Internal::Type::BaseModel
                extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
                include DeliveryFivePostClient::Internal::Type::RequestParameters

                # @!attribute task_id
                #   UUID в формате v4 / UUID in v4 format
                #
                #   @return [String]
                required :task_id, String, api_name: :taskId

                # @!method initialize(task_id:, request_options: {})
                #   @param task_id [String] UUID в формате v4 / UUID in v4 format
                #
                #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
              end
            end
          end
        end
      end
    end
  end
end
