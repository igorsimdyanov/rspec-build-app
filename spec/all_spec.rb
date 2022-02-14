RSpec.describe Array do
  it 'содержит только четные числа' do
    expect([2, 4, 6, 8]).to all be_even
  end
end
