# frozen_string_literal: true

RSpec.describe 'В Ruby' do
  it 'истинные значения' do
    expect(true).to be_truthy
    expect(0).to be_truthy
    expect([]).to be_truthy
    expect('').to be_truthy
    expect(Object).to be_truthy
  end

  it 'ложные значения' do
    expect(false).to be_falsey
    expect(nil).to be_falsey
  end

  it :odd? do
    expect(1.odd?).to be true
    expect(2.odd?).to be false
  end
end
