module QuotableApi
    class Client
        def self.random
            response = Request.call('/random')
        end

        def self.find(quote_id)
            response = Request.call("/quotes/#{quote_id}")
        end

        def self.quotes
            response = Request.call("/quotes")
        end
    end
end
