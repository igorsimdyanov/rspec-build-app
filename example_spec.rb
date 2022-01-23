RSpec.describe 'Ruby успешно выполняет' do
  it 'сложение двух чисел' do
    expect(2 + 2).to be 4
  end
  it 'генерацию массива из диапазона' do
    expect([*1..10]).to include 5
  end
  it 'генерацию массива и число 100 в него не входит' do
    expect([*1..10]).not_to include 100
  end
end
