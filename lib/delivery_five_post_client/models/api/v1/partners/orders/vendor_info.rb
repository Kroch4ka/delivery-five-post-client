# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Orders
            class VendorInfo < DeliveryFivePostClient::Internal::Type::BaseModel
              # @!attribute inn
              #   ИНН поставщика / Vendor tax ID (INN)
              #
              #   @return [String]
              required :inn, String

              # @!attribute name
              #   Название поставщика / Vendor name
              #
              #   @return [String]
              required :name, String

              # @!method initialize(inn:, name:)
              #   Информация о поставщике / Vendor information
              #
              #   @param inn [String] ИНН поставщика / Vendor tax ID (INN)
              #
              #   @param name [String] Название поставщика / Vendor name
            end
          end
        end
      end
    end
  end
end
