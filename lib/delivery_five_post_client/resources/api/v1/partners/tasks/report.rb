# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V1
        class Partners
          class Tasks
            class Report
              # @return [DeliveryFivePostClient::Resources::API::V1::Partners::Tasks::Report::Avds]
              attr_reader :avds

              # @api private
              #
              # @param client [DeliveryFivePostClient::Client]
              def initialize(client:)
                @client = client
                @avds = DeliveryFivePostClient::Resources::API::V1::Partners::Tasks::Report::Avds.new(client: client)
              end
            end
          end
        end
      end
    end
  end
end
