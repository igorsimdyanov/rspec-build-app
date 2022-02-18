require_relative '../lib/game'

RSpec.describe Game do
  let(:mario) { double('Mario').as_null_object }  # 1. Подготовка (Arrange)

  it :play do
    described_class.play(mario)                   # 2. Действие (Act)
    expect(mario).to have_received(:jump)         # 3. Проверка (Assert)
  end
end
