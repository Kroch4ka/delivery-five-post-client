# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class ReturnRetrieveGetPlacementCodeResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::Models::API::V1::Partners::ReturnRetrieveGetPlacementCodeResponse,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Код закладки / Placement code
            sig { returns(String) }
            attr_accessor :placement_code

            # Код размещения возврата / Placement code
            sig { params(placement_code: String).returns(T.attached_class) }
            def self.new(
              # Код закладки / Placement code
              placement_code:
            )
            end

            sig { override.returns({ placement_code: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
