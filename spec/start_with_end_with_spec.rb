RSpec.describe 'Коллекции в RSpec' do
  it 'можно проверять при помощи матчера start_with' do
    expect([1, 2, 3, 4, 5]).to start_with 1, 2
    expect('Hello, world!').to start_with 'Hello'
  end

  it 'можно проверять при помощи матчера end_with' do
    expect([1, 2, 3, 4, 5]).to end_with 4, 5
    expect('Hello, world!').to end_with 'world!'
  end
end
