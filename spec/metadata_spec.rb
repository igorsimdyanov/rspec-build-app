RSpec.describe Hash do
  it 'используется в качестве метаданных в RSpec', :fast, :focus do |example|
    pp example.metadata
  end
end
