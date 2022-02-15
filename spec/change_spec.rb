RSpec.describe 'Массив в Ruby' do
  let(:arr) { [1, 2, 3] }

  it 'оператор << изменяет массив' do
    expect{ arr << 4 }.to change { arr.size }.by(1)
  end

  it 'метод cancat изменяет размер массива' do
    expect{ arr.concat([4, 5, 6]) }.to change { arr.size }.by(3)
    expect{ arr.concat([4, 5, 6]) }.to change { arr.size }.by_at_least(2)
    expect{ arr.concat([4, 5, 6]) }.to change { arr.size }.by_at_most(4)
  end
end
