# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerGetReceiverLocationsResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::Models::API::V1::PartnerGetReceiverLocationsResponse,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Массив переадресаций / Array of redirections
          sig do
            returns(
              T::Array[
                DeliveryFivePostClient::Models::API::V1::PartnerGetReceiverLocationsResponse::Redirection
              ]
            )
          end
          attr_accessor :redirections

          # Ответ с информацией о переадресациях / Receiver locations response
          sig do
            params(
              redirections:
                T::Array[
                  DeliveryFivePostClient::Models::API::V1::PartnerGetReceiverLocationsResponse::Redirection::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Массив переадресаций / Array of redirections
            redirections:
          )
          end

          sig do
            override.returns(
              {
                redirections:
                  T::Array[
                    DeliveryFivePostClient::Models::API::V1::PartnerGetReceiverLocationsResponse::Redirection
                  ]
              }
            )
          end
          def to_hash
          end

          class Redirection < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::Models::API::V1::PartnerGetReceiverLocationsResponse::Redirection,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :from_location_id

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :order_id

            # Дата переадресации / Redirection date
            sig { returns(Time) }
            attr_accessor :redirection_date

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :to_location_id

            # Информация о переадресации / Redirection information
            sig do
              params(
                from_location_id: String,
                order_id: String,
                redirection_date: Time,
                to_location_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              # UUID в формате v4 / UUID in v4 format
              from_location_id:,
              # UUID в формате v4 / UUID in v4 format
              order_id:,
              # Дата переадресации / Redirection date
              redirection_date:,
              # UUID в формате v4 / UUID in v4 format
              to_location_id:
            )
            end

            sig do
              override.returns(
                {
                  from_location_id: String,
                  order_id: String,
                  redirection_date: Time,
                  to_location_id: String
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
