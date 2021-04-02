# frozen_string_literal: true

module PiHole
  class StatusCommand
    def query_string
      'status=true'
    end
  end
end
