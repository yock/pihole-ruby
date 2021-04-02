# frozen_string_literal: true

require 'net/http'

module PiHole
  # The main entrypoint for this SDK. Describes the location and interaction with the PiHole API
  class Endpoint
    # @param [String] location The protocol and domain (or IP address) via which PiHole is served
    # @param [String] api_key The API key to access the PiHole API
    def initialize(location:, api_key:)
      @location = location
      @api_key = api_key
    end

    # @param [#query_string] command
    def execute(command)
      uri = URI "#{location}/admin/api.php?#{command.query_string}&#{auth_query_string}"
      Net::HTTP.get_response uri
    end

    private

    attr_reader :location, :api_key

    def auth_query_string
      "auth=#{api_key}"
    end
  end
end
