# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      # @return [DeliveryFivePostClient::Resources::API::V1]
      attr_reader :v1

      # @return [DeliveryFivePostClient::Resources::API::V2]
      attr_reader :v2

      # @return [DeliveryFivePostClient::Resources::API::V3]
      attr_reader :v3

      # @api private
      #
      # @param client [DeliveryFivePostClient::Client]
      def initialize(client:)
        @client = client
        @v1 = DeliveryFivePostClient::Resources::API::V1.new(client: client)
        @v2 = DeliveryFivePostClient::Resources::API::V2.new(client: client)
        @v3 = DeliveryFivePostClient::Resources::API::V3.new(client: client)
      end
    end
  end
end
