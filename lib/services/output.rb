module Services
  class Output
    class << self
      def stdout(str)
        puts str
      end

      def stderr(str)
        warn str
      end
    end
  end
end
