# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class ReceiverLocation < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::API::V1::ReceiverLocation,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # UUID в формате v4 / UUID in v4 format
          sig { returns(T.nilable(String)) }
          attr_reader :location_id

          sig { params(location_id: String).void }
          attr_writer :location_id

          # MDM код точки выдачи / Pickup point MDM code
          sig { returns(T.nilable(String)) }
          attr_reader :mdm_code

          sig { params(mdm_code: String).void }
          attr_writer :mdm_code

          # Точка получения / Receiver location
          sig do
            params(location_id: String, mdm_code: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # UUID в формате v4 / UUID in v4 format
            location_id: nil,
            # MDM код точки выдачи / Pickup point MDM code
            mdm_code: nil
          )
          end

          sig { override.returns({ location_id: String, mdm_code: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
