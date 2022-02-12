# frozen_string_literal: true

require_relative '../../lib/services/collection_generator'

RSpec.описание Services::CollectionGenerator do
  в_контексте 'когда данные корректные' do
    let(:array_of_ten_elements) { Services::CollectionGenerator.call(1, 10) }

    тестируем 'генерацию массива из диапазона' do
      expect(array_of_ten_elements).to eq [*1..10]
    end

    тестируем 'генерацию массива и число 5 в него входит' do
      expect(array_of_ten_elements).to include 5
    end

    тестируем 'генерацию массива и число 100 в него не входит' do
      expect(array_of_ten_elements).not_to include 100
    end
  end

  в_контексте 'когда данные некорректные' do
    тест 'если левая граница диапазона больше правой' do
      expect {
        Services::CollectionGenerator.call(10, 1)
      }.to raise_error(StandardError)
    end
  end
end
