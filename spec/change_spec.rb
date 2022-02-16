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

  it 'оператор << позволяет заполнять массив' do
    expect{ arr << 4 }.to change { arr.size }.from(3)
    expect{ arr << 5 }.to change { arr.size }.to(5)
    expect{ arr << 6 }.to change { arr.size }.from(5).to(6)
    expect{ arr << 7 }.to change { arr.size }.to(7).from(6)
  end
end
