require_relative '../lib/currency'

RSpec.describe Currency do
  # include Rack::Test::Methods
  let(:currency) { Currency.new }

  before do
    stub_const('Currency::SOURCE', 'http://localhost:9292/latest.json')
    # stub_request(:any, Re).to_rack(App)
  end

  it :usd do
    expect(currency.usd).to be > 0
    expect(currency.usd).to be_kind_of(Float)
  end

  it :euro do
    expect(currency.eur).to be > 0
    expect(currency.eur).to be_kind_of(Float)
  end
end
