RSpec.describe 'Матчер contain_exactly' do
  let (:products) do
    [
      { name: 'Процессор', price: 40_399 },
      { name: 'Материнская плата', price: 16_999 },
      { name: 'Видеокарта', price: 55_999 }
    ]
  end
  
  it 'успешно работает' do
    expect(products).to contain_exactly(
      { name: 'Видеокарта', price: a_value < 60_000 },
      { name: 'Материнская плата', price: a_value_between(10_000, 20_000) },
      { name: 'Процессор', price: a_value > 40_000 },
    )
  end
end
