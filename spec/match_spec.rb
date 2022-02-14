RSpec.describe 'Матчер match' do
  let (:products) do
    [
      { name: 'Процессор', price: 40_399 },
      { name: 'Материнская плата', price: 16_999 },
      { name: 'Видеокарта', price: 55_999 },
      { name: 'Оперативная память', price: 48_299 },
      { name: 'SSD', price: 46_499 }
    ]
  end
  
  it 'успешно работает' do
    expect(products).to match [
      { name: 'Процессор', price: a_value > 40_000 },
      { name: 'Материнская плата', price: a_value_between(10_000, 20_000) },
      { name: 'Видеокарта', price: a_value < 60_000 }
    ]
  end
end
