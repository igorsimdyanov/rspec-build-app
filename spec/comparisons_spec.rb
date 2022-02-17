# frozen_string_literal: true

RSpec.describe 'Операторы в Ruby' do
  it :== do
    expect(1).to be == 1
  end
  it :< do
    expect(1).to be < 2
  end
  it :<= do
    expect(1).to be <= 2
  end
  it :> do
    expect(2).to be > 1
  end
  it :>= do
    expect(2).to be >= 1
  end
  it :=== do
    expect(String).to be === 'любая строка'
  end
end
