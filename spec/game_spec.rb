require_relative '../lib/game'

RSpec.describe Game do
  let(:mario) { spy('Mario') }

  it :play do
    described_class.play(mario)
    expect(mario).to have_received(:jump)
  end
end
