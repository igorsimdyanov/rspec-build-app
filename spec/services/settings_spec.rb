# frozen_string_literal: true

require_relative '../../lib/services/settings'

RSpec.describe Services::Settings do
  context 'при создании нескольких объектов' do
    def build_settings
      setting = described_class.instance
      setting[:title] = 'Новостной портал'
      setting[:per_page] = 30
      setting
    end

    let(:first_try) { build_settings.list }
    let(:second_try) { build_settings.list }

    it 'возвращает ссылку на один и тот же объект' do
      expect(second_try).to equal(first_try)
    end
  end
end
