# typed: strong

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          module Orders
            # Ставка НДС (%) / VAT rate (%)
            module VatRate
              extend DeliveryFivePostClient::Internal::Type::Enum

              TaggedFloat =
                T.type_alias do
                  T.all(
                    Float,
                    DeliveryFivePostClient::API::V1::Partners::Orders::VatRate
                  )
                end
              OrFloat = T.type_alias { Float }

              VAT_RATE_0 =
                T.let(
                  0,
                  DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::TaggedFloat
                )
              VAT_RATE_5 =
                T.let(
                  5,
                  DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::TaggedFloat
                )
              VAT_RATE_7 =
                T.let(
                  7,
                  DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::TaggedFloat
                )
              VAT_RATE_10 =
                T.let(
                  10,
                  DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::TaggedFloat
                )
              VAT_RATE_20 =
                T.let(
                  20,
                  DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::TaggedFloat
                )
              VAT_RATE_22 =
                T.let(
                  22,
                  DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::TaggedFloat
                )

              sig do
                override.returns(
                  T::Array[
                    DeliveryFivePostClient::API::V1::Partners::Orders::VatRate::TaggedFloat
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
