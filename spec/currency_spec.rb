require_relative '../lib/currency'

RSpec.describe 'Currency' do
  let(:currency) { instance_double('Currency') }

  before do
    allow(currency).to receive(:usd).and_return(75.0)
    allow(currency).to receive(:eur).and_return(86.0)
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
