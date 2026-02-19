# frozen_string_literal: true

module DeliveryFivePostClient
  class Client < DeliveryFivePostClient::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # rubocop:disable Style/MutableConstant
    # @type [Hash{Symbol=>String}]
    ENVIRONMENTS = {production: "https://api-preprod-omni.x5.ru", environment_1: "https://api-omni.x5.ru"}
    # rubocop:enable Style/MutableConstant

    # @return [String]
    attr_reader :api_key

    # @return [DeliveryFivePostClient::Resources::API]
    attr_reader :api

    # @return [DeliveryFivePostClient::Resources::Webhooks]
    attr_reader :webhooks

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @api_key.nil?

      {"authorization" => "Bearer #{@api_key}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Defaults to `ENV["DELIVERY_FIVE_POST_CLIENT_API_KEY"]`
    #
    # @param environment [:production, :environment_1, nil] Specifies the environment to use for the API.
    #
    # Each environment maps to a different base URL:
    #
    # - `production` corresponds to `https://api-preprod-omni.x5.ru`
    # - `environment_1` corresponds to `https://api-omni.x5.ru`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to
    # `ENV["DELIVERY_FIVE_POST_CLIENT_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key: ENV["DELIVERY_FIVE_POST_CLIENT_API_KEY"],
      environment: nil,
      base_url: ENV["DELIVERY_FIVE_POST_CLIENT_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= DeliveryFivePostClient::Client::ENVIRONMENTS.fetch(environment&.to_sym || :production) do
        message = "environment must be one of #{DeliveryFivePostClient::Client::ENVIRONMENTS.keys}, got #{environment}"
        raise ArgumentError.new(message)
      end

      if api_key.nil?
        raise ArgumentError.new("api_key is required, and can be set via environ: \"DELIVERY_FIVE_POST_CLIENT_API_KEY\"")
      end

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @api = DeliveryFivePostClient::Resources::API.new(client: self)
      @webhooks = DeliveryFivePostClient::Resources::Webhooks.new(client: self)
    end
  end
end
