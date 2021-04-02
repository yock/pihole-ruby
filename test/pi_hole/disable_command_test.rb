# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../lib/pi_hole'

module PiHole
  class DisableCommandTest < Minitest::Test
    def test_default_query_string
      command = DisableCommand.new
      assert_equal 'disable=30', command.query_string
    end

    def test_query_string_for_custom_duration
      command = DisableCommand.new duration: 60
      assert_equal 'disable=60', command.query_string
    end
  end
end
