# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerRetrieveResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::Models::API::V1::PartnerRetrieveResponse,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Дата окончания срока хранения / Storage expiration date
          sig { returns(Date) }
          attr_accessor :expiration_date

          # UUID в формате v4 / UUID in v4 format
          sig { returns(String) }
          attr_accessor :order_id

          # Ответ с датой окончания хранения / Expiration date response
          sig do
            params(expiration_date: Date, order_id: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Дата окончания срока хранения / Storage expiration date
            expiration_date:,
            # UUID в формате v4 / UUID in v4 format
            order_id:
          )
          end

          sig { override.returns({ expiration_date: Date, order_id: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
