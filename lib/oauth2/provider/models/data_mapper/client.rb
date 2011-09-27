class OAuth2::Provider::Models::DataMapper::Client
  module Behaviour
    extend ActiveSupport::Concern
    included do
      include OAuth2::Provider::Models::Client

    has n, :authorizations, :class_name => OAuth2::Provider.authorization_class_name, :foreign_key => 'client_id'
    has n, :authorization_codes, :through => :authorizations, :class_name => OAuth2::Provider.authorization_code_class_name
    has n, :access_tokens, :through => :authorizations, :class_name => OAuth2::Provider.access_token_class_name

    end
  end

  include Behaviour
end

