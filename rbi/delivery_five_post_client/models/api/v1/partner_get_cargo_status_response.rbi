# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        class PartnerGetCargoStatusResponse < DeliveryFivePostClient::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                DeliveryFivePostClient::Models::API::V1::PartnerGetCargoStatusResponse,
                DeliveryFivePostClient::Internal::AnyHash
              )
            end

          # Массив статусов грузомест / Array of cargo statuses
          sig do
            returns(
              T::Array[
                DeliveryFivePostClient::Models::API::V1::PartnerGetCargoStatusResponse::Cargo
              ]
            )
          end
          attr_accessor :cargoes

          # Ответ со статусами грузомест / Cargo status response
          sig do
            params(
              cargoes:
                T::Array[
                  DeliveryFivePostClient::Models::API::V1::PartnerGetCargoStatusResponse::Cargo::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Массив статусов грузомест / Array of cargo statuses
            cargoes:
          )
          end

          sig do
            override.returns(
              {
                cargoes:
                  T::Array[
                    DeliveryFivePostClient::Models::API::V1::PartnerGetCargoStatusResponse::Cargo
                  ]
              }
            )
          end
          def to_hash
          end

          class Cargo < DeliveryFivePostClient::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  DeliveryFivePostClient::Models::API::V1::PartnerGetCargoStatusResponse::Cargo,
                  DeliveryFivePostClient::Internal::AnyHash
                )
              end

            # UUID в формате v4 / UUID in v4 format
            sig { returns(String) }
            attr_accessor :cargo_id

            # Дата изменения статуса / Status change date
            sig { returns(Time) }
            attr_accessor :change_date

            # ID грузоместа партнера / Partner cargo ID
            sig { returns(String) }
            attr_accessor :sender_cargo_id

            # Статус грузоместа / Cargo status
            sig { returns(String) }
            attr_accessor :status

            # Описание ошибки / Error description
            sig { returns(T.nilable(String)) }
            attr_reader :error_desc

            sig { params(error_desc: String).void }
            attr_writer :error_desc

            # Тип мили доставки / Delivery mile type
            sig do
              returns(T.nilable(DeliveryFivePostClient::MileType::TaggedSymbol))
            end
            attr_reader :mile_type

            sig do
              params(mile_type: DeliveryFivePostClient::MileType::OrSymbol).void
            end
            attr_writer :mile_type

            # Статус грузоместа / Cargo status
            sig do
              params(
                cargo_id: String,
                change_date: Time,
                sender_cargo_id: String,
                status: String,
                error_desc: String,
                mile_type: DeliveryFivePostClient::MileType::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # UUID в формате v4 / UUID in v4 format
              cargo_id:,
              # Дата изменения статуса / Status change date
              change_date:,
              # ID грузоместа партнера / Partner cargo ID
              sender_cargo_id:,
              # Статус грузоместа / Cargo status
              status:,
              # Описание ошибки / Error description
              error_desc: nil,
              # Тип мили доставки / Delivery mile type
              mile_type: nil
            )
            end

            sig do
              override.returns(
                {
                  cargo_id: String,
                  change_date: Time,
                  sender_cargo_id: String,
                  status: String,
                  error_desc: String,
                  mile_type: DeliveryFivePostClient::MileType::TaggedSymbol
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
