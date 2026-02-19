# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class Tasks
            # @return [DeliveryFivePostClient::Resources::API::V1::Partners::Tasks::Report]
            attr_reader :report

            # @api private
            #
            # @param client [DeliveryFivePostClient::Client]
            def initialize(client:)
              @client = client
              @report = DeliveryFivePostClient::Resources::API::V1::Partners::Tasks::Report.new(client: client)
            end
          end
        end
      end
    end
  end
end
