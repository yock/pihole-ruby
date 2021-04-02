# frozen_string_literal: true

module PiHole
  # Temporarily disable PiHole blocking
  class DisableCommand
    attr_accessor :duration

    # @param [Integer] duration Number of seconds to disable PiHole blocking
    def initialize(duration: 30)
      @duration = duration
    end

    # @return String
    def query_string
      "disable=#{@duration}"
    end
  end
end
