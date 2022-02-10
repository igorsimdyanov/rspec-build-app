# frozen_string_literal: true

module Services
  class CollectionGenerator
    attr_accessor :left_border, :right_border

    def self.call(left_border, right_border)
      new(left_border, right_border).call
    end

    def initialize(left_border, right_border)
      incorrect_borders if right_border < left_border

      @left_border = left_border
      @right_border = right_border
    end

    def call
      range = Range.new(left_border, right_border)
      [*range]
    end

    private

    def incorrect_borders
      raise StandardError, 'Левая граница должна быть меньше правой'
    end
  end
end
