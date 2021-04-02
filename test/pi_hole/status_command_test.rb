# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../lib/pi_hole'

module PiHole
  class StatusCommandTest < Minitest::Test
    def test_the_query_string
      command = StatusCommand.new
      assert_equal 'status=true', command.query_string
    end
  end
end
