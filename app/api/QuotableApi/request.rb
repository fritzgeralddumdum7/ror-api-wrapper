require 'rest-client'
require 'net/http'

module QuotableApi
    class Request
        API_ENDPOINT = 'https://api.quotable.io'
        DOMAIN = 'api.quotable.io'

        def self.rest_client(endpoint)
            result = RestClient.get("#{API_ENDPOINT}#{endpoint}", headers={ 'Content-Type' => 'application/json' })
            JSON.parse(result)
        rescue RestClient::ExceptionWithResponse => error
            error
        end

        def self.net_http(endpoint)
            result = Net::HTTP.get(DOMAIN, endpoint)
            JSON.parse(result)
        rescue Net::HTTPNotFound => error
            error
        end
    end
end
