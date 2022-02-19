require_relative '../lib/user'

RSpec.describe User do
  let(:user) {
    described_class.new(
      first_name: 'Тест',
      last_name: 'Тестов',
      middle_name: 'Тестович'
    )
  }

  before do
    allow(user).to receive(:middle_name).and_return('-')
  end

  it 'атрибуты' do
    expect(user.first_name).to eq 'Тест'
    expect(user.last_name).to eq 'Тестов'
    expect(user.middle_name).to eq '-'
  end
end
