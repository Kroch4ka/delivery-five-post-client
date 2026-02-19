# typed: strong

module DeliveryFivePostClient
  class Client < DeliveryFivePostClient::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    ENVIRONMENTS =
      T.let(
        {
          production: "https://api-preprod-omni.x5.ru",
          environment_1: "https://api-omni.x5.ru"
        },
        T::Hash[Symbol, String]
      )

    sig { returns(String) }
    attr_reader :api_key

    sig { returns(DeliveryFivePostClient::Resources::API) }
    attr_reader :api

    sig { returns(DeliveryFivePostClient::Resources::Webhooks) }
    attr_reader :webhooks

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        environment: T.nilable(T.any(Symbol, String)),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["DELIVERY_FIVE_POST_CLIENT_API_KEY"]`
      api_key: ENV["DELIVERY_FIVE_POST_CLIENT_API_KEY"],
      # Specifies the environment to use for the API.
      #
      # Each environment maps to a different base URL:
      #
      # - `production` corresponds to `https://api-preprod-omni.x5.ru`
      # - `environment_1` corresponds to `https://api-omni.x5.ru`
      environment: nil,
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to
      # `ENV["DELIVERY_FIVE_POST_CLIENT_BASE_URL"]`
      base_url: ENV["DELIVERY_FIVE_POST_CLIENT_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: DeliveryFivePostClient::Client::DEFAULT_MAX_RETRIES,
      timeout: DeliveryFivePostClient::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DeliveryFivePostClient::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DeliveryFivePostClient::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
