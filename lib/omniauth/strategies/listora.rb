require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Listora < OmniAuth::Strategies::OAuth2
      option :name, 'listora'
      option :client_options, { site: 'http://eindx-identity.dev' }

      info do
        {
          name: [raw_info['first_name'], raw_info['last_name']].join
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/oauth/token/info').parsed
      end
    end
  end
end
