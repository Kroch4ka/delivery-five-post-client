# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V3
        # @return [DeliveryFivePostClient::Resources::API::V3::Partners]
        attr_reader :partners

        # @api private
        #
        # @param client [DeliveryFivePostClient::Client]
        def initialize(client:)
          @client = client
          @partners = DeliveryFivePostClient::Resources::API::V3::Partners.new(client: client)
        end
      end
    end
  end
end
