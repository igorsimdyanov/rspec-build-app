require 'open-uri'
require 'json'

class Currency
  SOURCE = 'https://www.cbr-xml-daily.ru/latest.js'

  attr_reader :currency

  def initialize(url = SOURCE)
    @currency = JSON.load(URI.open(url))
  end

  def usd
    1 / currency&.dig('rates', 'USD')
  end

  def eur
    1 / currency&.dig('rates', 'EUR')
  end
end