# frozen_string_literal: true

RSpec.describe Hash, :outer_group do
  it 'используется в качестве метаданных в RSpec', :fast, :focus do |example|
    pp example.metadata
  end

  context 'во вложенной группе' do
    it 'так же наследуется' do |example|
      pp example.metadata
    end
  end
end
