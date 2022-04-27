require 'rest-client'

module QuoteRandomizer
    class Request
        # BASE_URL = 'https://api.quotable.io'
        BASE_URL = 'https://uselessfacts.jsph.pl/'

        # def self.call(http_method, enpoint)
        #     result = RestClient::Request.execute(
        #         method: http_method,
        #         url: "#{BASE_URL}#{enpoint}",
        #         headers: {
        #             'Content-Type' => 'application/json'
        #         }
        #     )

        #     JSON.parse(result)
        # end
        def self.call(http_method, enpoint)
            result = RestClient::Request.execute(
                method: http_method,
                url: "#{BASE_URL}#{enpoint}",
                headers: {
                    'Content-Type' => 'application/json'
                }
            )

            # JSON.parse(result)
            return result
        end
    end
end
