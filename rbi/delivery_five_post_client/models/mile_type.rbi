# typed: strong

module DeliveryFivePostClient
  module Models
    # Тип мили доставки / Delivery mile type
    module MileType
      extend DeliveryFivePostClient::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, DeliveryFivePostClient::MileType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      FIRST_MILE =
        T.let(:FIRST_MILE, DeliveryFivePostClient::MileType::TaggedSymbol)
      MIDDLE_MILE =
        T.let(:MIDDLE_MILE, DeliveryFivePostClient::MileType::TaggedSymbol)
      LAST_MILE =
        T.let(:LAST_MILE, DeliveryFivePostClient::MileType::TaggedSymbol)
      RETURN_MILE =
        T.let(:RETURN_MILE, DeliveryFivePostClient::MileType::TaggedSymbol)

      sig do
        override.returns(
          T::Array[DeliveryFivePostClient::MileType::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
