# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        # Валюта (в текущей версии поддерживается только RUB) / Currency (currently only
        # RUB is supported)
        module Currency
          extend DeliveryFivePostClient::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, DeliveryFivePostClient::API::V1::Currency)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RUB =
            T.let(:RUB, DeliveryFivePostClient::API::V1::Currency::TaggedSymbol)

          sig do
            override.returns(
              T::Array[DeliveryFivePostClient::API::V1::Currency::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
