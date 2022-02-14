# frozen_string_literal: true

require_relative '../../lib/services/block_generator'

RSpec.describe Services::BlockGenerator do
  it :call do
    expect{ |block|
      described_class.call(10, 'food', Math::PI, &block)
    }.to yield_with_args(10, /foo/, a_value_within(0.1).of(3.14))
  end
end
