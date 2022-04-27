require 'rest-client'

module QuotableApi
    class Request
        BASE_URL = 'https://api.quotable.io'

        def self.call(enpoint)
            result = RestClient::Request.execute(
                method: 'GET',
                url: "#{BASE_URL}#{enpoint}",
                headers: {
                    'Content-Type' => 'application/json'
                }
            )

            JSON.parse(result)
        end
    end
end
