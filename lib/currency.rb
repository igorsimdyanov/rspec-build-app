require 'open-uri'

class Currency
  SOURCE = 'https://www.cbr-xml-daily.ru/latest.js'

  class << self
    def sync
      @currency ||= JSON.load(open(SOURCE))
    end

    def usd
      sync unless @currency

      1 / @currency&.dig('rates', 'USD')
    end

    def eur
      sync unless @currency

      1 / @currency&.dig('rates', 'EUR')
    end
  end
end