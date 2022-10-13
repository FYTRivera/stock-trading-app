class Iex < ApplicationRecord
    def self.client
        client = IEX::Api::Client.new(
            publishable_token: ENV['PUBLIC_TOKEN'],
            secret_token: ENV['SECRET_TOKEN'],
            endpoint: 'https://cloud.iexapis.com/v1'
        )
    end
end
  