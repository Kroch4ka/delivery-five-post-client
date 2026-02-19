# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V3
        class Partners
          # @return [DeliveryFivePostClient::Resources::API::V3::Partners::Orders]
          attr_reader :orders

          # @api private
          #
          # @param client [DeliveryFivePostClient::Client]
          def initialize(client:)
            @client = client
            @orders = DeliveryFivePostClient::Resources::API::V3::Partners::Orders.new(client: client)
          end
        end
      end
    end
  end
end
