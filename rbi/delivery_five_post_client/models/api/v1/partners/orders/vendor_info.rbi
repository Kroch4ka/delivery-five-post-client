# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Orders
            class VendorInfo < DeliveryFivePostClient::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    DeliveryFivePostClient::API::V1::Partners::Orders::VendorInfo,
                    DeliveryFivePostClient::Internal::AnyHash
                  )
                end

              # ИНН поставщика / Vendor tax ID (INN)
              sig { returns(String) }
              attr_accessor :inn

              # Название поставщика / Vendor name
              sig { returns(String) }
              attr_accessor :name

              # Информация о поставщике / Vendor information
              sig do
                params(inn: String, name: String).returns(T.attached_class)
              end
              def self.new(
                # ИНН поставщика / Vendor tax ID (INN)
                inn:,
                # Название поставщика / Vendor name
                name:
              )
              end

              sig { override.returns({ inn: String, name: String }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
