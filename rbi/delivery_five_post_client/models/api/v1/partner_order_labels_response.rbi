# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerOrderLabelsResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::Models::API::V1::PartnerOrderLabelsResponse,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Массив этикеток / Array of labels
          sig do
            returns(
              T::Array[
                DeliveryFivePostClient::Models::API::V1::PartnerOrderLabelsResponse::Label
              ]
            )
          end
          attr_accessor :labels

          # Ответ с этикетками / Order labels response
          sig do
            params(
              labels:
                T::Array[
                  DeliveryFivePostClient::Models::API::V1::PartnerOrderLabelsResponse::Label::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Массив этикеток / Array of labels
            labels:
          )
          end

          sig do
            override.returns(
              {
                labels:
                  T::Array[
                    DeliveryFivePostClient::Models::API::V1::PartnerOrderLabelsResponse::Label
                  ]
              }
            )
          end
          def to_hash
          end

          class Label < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::Models::API::V1::PartnerOrderLabelsResponse::Label,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # Этикетка в формате Base64 / Label in Base64 format
            sig { returns(String) }
            attr_accessor :label

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :order_id

            # Информация об этикетке / Label information
            sig do
              params(label: String, order_id: String).returns(T.attached_class)
            end
            def self.new(
              # Этикетка в формате Base64 / Label in Base64 format
              label:,
              # UUID в формате v4 / UUID in v4 format
              order_id:
            )
            end

            sig { override.returns({ label: String, order_id: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
