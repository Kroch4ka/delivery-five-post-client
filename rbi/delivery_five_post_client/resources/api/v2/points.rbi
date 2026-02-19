# typed: strong

module DeliveryFivePostClient
  module Resources
    class API
      class V2
        class Points
          sig do
            returns(DeliveryFivePostClient::Resources::API::V2::Points::Sl)
          end
          attr_reader :sl

          # Получение точек выдачи для C2C / Get pickup points for C2C
          sig do
            params(
              city: String,
              from_location_id: String,
              region: String,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(T::Array[DeliveryFivePostClient::API::V2::PickupPoint])
          end
          def get_c2c_pickup_points(
            # Город / City
            city: nil,
            # UUID в формате v4 / UUID in v4 format
            from_location_id: nil,
            # Регион / Region
            region: nil,
            request_options: {}
          )
          end

          # Получение точек размещения для C2C / Get placement points for C2C
          sig do
            params(
              city: String,
              region: String,
              request_options: DeliveryFivePostClient::RequestOptions::OrHash
            ).returns(T::Array[DeliveryFivePostClient::API::V2::PickupPoint])
          end
          def get_c2c_placement_points(
            # Город / City
            city: nil,
            # Регион / Region
            region: nil,
            request_options: {}
          )
          end

          # @api private
          sig do
            params(client: DeliveryFivePostClient::Client).returns(
              T.attached_class
            )
          end
          def self.new(client:)
          end
        end
      end
    end
  end
end
