# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class PartnerSupplyDeleteResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::Models::API::V1::Partners::PartnerSupplyDeleteResponse,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Успешность операции / Success
            sig { returns(T::Boolean) }
            attr_accessor :success

            sig { params(success: T::Boolean).returns(T.attached_class) }
            def self.new(
              # Успешность операции / Success
              success:
            )
            end

            sig { override.returns({ success: T::Boolean }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
