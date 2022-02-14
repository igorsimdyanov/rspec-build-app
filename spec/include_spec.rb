RSpec.describe 'Коллекции в RSpec' do
  let(:product) {
    { 
      name: 'Процессор Intel Core i9-11900KF BOX',
      price: 40_399,
      id: 3242352
    }
  }

  it 'можно проверять при помощи матчера include' do
    expect([1, 2, 3, 4, 5]).to include 5, 3
    expect('Hello, world!').to include 'world', 'Hello'
  end

  context 'в случае хэшей' do
    it 'так же можно проверить при помощи матчера include' do
      expect(product).to include :price, :name
      expect(product).to include id: 3242352
    end
  end
end
