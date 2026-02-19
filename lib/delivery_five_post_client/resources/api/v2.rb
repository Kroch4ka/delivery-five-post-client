# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V2
        # @return [DeliveryFivePostClient::Resources::API::V2::Partners]
        attr_reader :partners

        # @return [DeliveryFivePostClient::Resources::API::V2::Points]
        attr_reader :points

        # @api private
        #
        # @param client [DeliveryFivePostClient::Client]
        def initialize(client:)
          @client = client
          @partners = DeliveryFivePostClient::Resources::API::V2::Partners.new(client: client)
          @points = DeliveryFivePostClient::Resources::API::V2::Points.new(client: client)
        end
      end
    end
  end
end
