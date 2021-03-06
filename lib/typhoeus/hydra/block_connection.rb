module Typhoeus
  class Hydra

    # This module handles the blocked connection request mode on
    # the hydra side, where only stubbed requests
    # are allowed.
    # Connection blocking needs to be turned on:
    #   Typhoeus.configure do |config|
    #     config.block_connection = true
    #   end
    #
    # When trying to do real requests a NoStub error
    # is raised.
    #
    # @api private
    module BlockConnection

      # Overrides queue in order to check before if block connection
      # is turned on. If thats the case a NoStub error is
      # raised.
      #
      # @example Queue the request.
      #   hydra.queue(request)
      #
      # @param [ Request ] request The request to enqueue.
      def queue(request)
        if Typhoeus::Config.block_connection
          raise Typhoeus::Errors::NoStub.new(request)
        else
          super
        end
      end
    end
  end
end
