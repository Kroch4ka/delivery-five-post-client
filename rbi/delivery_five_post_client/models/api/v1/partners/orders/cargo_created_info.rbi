# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Orders
            class CargoCreatedInfo < DeliveryFivePostClient::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    DeliveryFivePostClient::API::V1::Partners::Orders::CargoCreatedInfo,
                    DeliveryFivePostClient::Internal::AnyHash
                  )
                end

              # Штрих-код грузоместа / Cargo barcode
              sig { returns(String) }
              attr_accessor :barcode

              # UUID в формате v4 / UUID in v4 format
              sig { returns(String) }
              attr_accessor :cargo_id

              # ID грузоместа партнера / Partner cargo ID
              sig { returns(String) }
              attr_accessor :sender_cargo_id

              # Информация о созданном грузоместе / Created cargo information
              sig do
                params(
                  barcode: String,
                  cargo_id: String,
                  sender_cargo_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Штрих-код грузоместа / Cargo barcode
                barcode:,
                # UUID в формате v4 / UUID in v4 format
                cargo_id:,
                # ID грузоместа партнера / Partner cargo ID
                sender_cargo_id:
              )
              end

              sig do
                override.returns(
                  { barcode: String, cargo_id: String, sender_cargo_id: String }
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
end
