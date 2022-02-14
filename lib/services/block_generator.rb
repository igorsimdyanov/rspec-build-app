module Services
  class BlockGenerator
    def self.call(*args)
      yield(*args)
    end
  end
end
