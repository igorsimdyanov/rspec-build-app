require 'singleton'

module Services
  class Settings
    include Singleton

    attr_reader :list

    def initialize
      @list = {}
    end

    def [](key)
      @list[key]
    end

    def []=(key, value)
      @list[key] = value
    end
  end
end
