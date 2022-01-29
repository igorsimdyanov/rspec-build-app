require_relative '../../lib/services/collection_generator'

RSpec.describe Services::CollectionGenerator do
  describe 'успешно выполняет' do
    it 'генерацию массива из диапазона' do
      expect(Services::CollectionGenerator.call(1, 10)).to eq [*1..10]
    end

    it 'генерацию массива из диапазона' do
      expect(Services::CollectionGenerator.call(1, 10)).to include 5
    end

    it 'генерацию массива и число 100 в него не входит' do
      expect(Services::CollectionGenerator.call(1, 10)).not_to include 100
    end
  end

  describe 'возбуждает ошибку' do
    it 'если левая граница диапазона больше правой' do
      expect { Services::CollectionGenerator.call(10, 1) }.to raise_error(StandardError)
    end
  end
end
