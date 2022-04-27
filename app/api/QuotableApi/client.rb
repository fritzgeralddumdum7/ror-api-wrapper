module QuotableApi
    class Client
        def self.random
            response = Request.rest_client('/random')
        end

        def self.find(quote_id)
            response = Request.rest_client("/quotes/#{quote_id}")
        end

        def self.quotes
            response = Request.rest_client("/quotes")
        end

        def self.authors
            response = Request.net_http('/authors')
        end
    end
end
