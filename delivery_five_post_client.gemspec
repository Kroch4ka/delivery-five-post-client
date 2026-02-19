# frozen_string_literal: true

require_relative "lib/delivery_five_post_client/version"

Gem::Specification.new do |s|
  s.name = "delivery-five-post-client"
  s.version = DeliveryFivePostClient::VERSION
  s.summary = "Ruby library to access the Delivery Five Post Client API"
  s.authors = ["Delivery Five Post Client"]
  s.email = ""
  s.homepage = "https://gemdocs.org/gems/delivery-five-post-client"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/stainless-sdks/delivery-five-post-client-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "cgi"
  s.add_dependency "connection_pool"
end
