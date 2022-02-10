# frozen_string_literal: true

RSpec.describe 'Метод sleep' do
  it('может заснуть на 0.1 секунды') { sleep 0.1 }
  it('может заснуть на 0.2 секунды') { sleep 0.2 }
  it('может заснуть на 0.3 секунды') { sleep 0.3 }
  it('может заснуть на 0.4 секунды') { sleep 0.4 }
  it('может заснуть на 0.5 секунды') { sleep 0.5 }
end
