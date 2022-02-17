# frozen_string_literal: true

RSpec.describe 'Встраиваемые матчеры' do
  let(:products) do
    [
      { name: 'Процессор Intel Core i9-11900KF BOX', price: 40_399 },
      { name: 'Материнская плата GIGABYTE Z590 AORUS PRO AX', price: 16_999 },
      { name: 'Видеокарта GIGABYTE GeForce RTX 2060 D6 6G', price: 55_999 },
      { name: 'Оперативная память Kingston FURY Beast Black RGB', price: 48_299 },
      { name: '4000 ГБ 2.5" SATA накопитель Samsung 870 EVO', price: 46_499 }
    ]
  end

  it 'используется в качестве метаданных в RSpec' do
    expect(products).to start_with(
      { name: a_kind_of(String), price: a_value_between(10_000, 100_000) },
      { name: a_kind_of(String), price: a_value_between(10_000, 100_000) }
    )
  end
end
