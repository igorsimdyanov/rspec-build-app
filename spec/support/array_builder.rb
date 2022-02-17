# frozen_string_literal: true

module ArrayBuilder
  def service_object(range)
    Services::CollectionGenerator.call(range.begin, range.end)
  end

  def array_rand(_range, count = 10)
    count.times.map { rand(1..100) }
  end
end
