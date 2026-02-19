# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          class RedirectionCreateResponse < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::Models::API::V1::Partners::RedirectionCreateResponse,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :task_id

            # Ответ на запрос переадресации / Redirection response
            sig { params(task_id: String).returns(T.attached_class) }
            def self.new(
              # UUID в формате v4 / UUID in v4 format
              task_id:
            )
            end

            sig { override.returns({ task_id: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
