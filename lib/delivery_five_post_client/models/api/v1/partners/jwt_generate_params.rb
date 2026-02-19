# frozen_string_literal: true

module DeliveryFivePostClient
  module Models
    module API
      module V1
        module Partners
          # @see DeliveryFivePostClient::Resources::API::V1::Partners::Jwt#generate
          class JwtGenerateParams < DeliveryFivePostClient::Internal::Type::BaseModel
            extend DeliveryFivePostClient::Internal::Type::RequestParameters::Converter
            include DeliveryFivePostClient::Internal::Type::RequestParameters

            # @!attribute apikey
            #   API ключ партнера / Partner API key
            #
            #   @return [String]
            required :apikey, String

            # @!method initialize(apikey:, request_options: {})
            #   @param apikey [String] API ключ партнера / Partner API key
            #
            #   @param request_options [DeliveryFivePostClient::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
