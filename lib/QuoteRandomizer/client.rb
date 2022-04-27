module QuoteRandomizer
    class Client
        def self.quotes
            response = Request.call(http_method: 'GET', enpoint: '/random')
        end
    end
end
