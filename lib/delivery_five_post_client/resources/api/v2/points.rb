# frozen_string_literal: true

module DeliveryFivePostClient
  module Resources
    class API
      class V2
        class Points
          # @return [DeliveryFivePostClient::Resources::API::V2::Points::Sl]
          attr_reader :sl

          # Получение точек выдачи для C2C / Get pickup points for C2C
          #
          # @overload get_c2c_pickup_points(city: nil, from_location_id: nil, region: nil, request_options: {})
          #
          # @param city [String] Город / City
          #
          # @param from_location_id [String] UUID в формате v4 / UUID in v4 format
          #
          # @param region [String] Регион / Region
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<DeliveryFivePostClient::Models::API::V2::PickupPoint>]
          #
          # @see DeliveryFivePostClient::Models::API::V2::PointGetC2cPickupPointsParams
          def get_c2c_pickup_points(params = {})
            parsed, options = DeliveryFivePostClient::API::V2::PointGetC2cPickupPointsParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v2/points/pickup",
              body: parsed,
              model: DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V2::PickupPoint],
              options: options
            )
          end

          # Получение точек размещения для C2C / Get placement points for C2C
          #
          # @overload get_c2c_placement_points(city: nil, region: nil, request_options: {})
          #
          # @param city [String] Город / City
          #
          # @param region [String] Регион / Region
          #
          # @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<DeliveryFivePostClient::Models::API::V2::PickupPoint>]
          #
          # @see DeliveryFivePostClient::Models::API::V2::PointGetC2cPlacementPointsParams
          def get_c2c_placement_points(params = {})
            parsed, options = DeliveryFivePostClient::API::V2::PointGetC2cPlacementPointsParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/v2/points/placement",
              body: parsed,
              model: DeliveryFivePostClient::Internal::Type::ArrayOf[DeliveryFivePostClient::API::V2::PickupPoint],
              options: options
            )
          end

          # @api private
          #
          # @param client [DeliveryFivePostClient::Client]
          def initialize(client:)
            @client = client
            @sl = DeliveryFivePostClient::Resources::API::V2::Points::Sl.new(client: client)
          end
        end
      end
    end
  end
end
