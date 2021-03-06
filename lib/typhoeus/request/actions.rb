module Typhoeus
  class Request # :nodoc:

    # Module containing logic about shortcuts to
    # http methods. Like
    #   Typhoeus.get("www.example.com")
    module Actions

      # Make a get request.
      #
      # @example Make get request.
      #   Typhoeus.get("www.example.com")
      #
      # @param (see Typhoeus::Request#initialize)
      #
      # @option (see Typhoeus::Request#initialize)
      #
      # @return (see Typhoeus::Request#initialize)
      #
      # @note (see Typhoeus::Request#initialize)
      def get(url, options = {})
        Request.run(url, options.merge(:method => :get))
      end

      # Make a post request.
      #
      # @example Make post request.
      #   Typhoeus.post("www.example.com")
      #
      # @param (see Typhoeus::Request#initialize)
      #
      # @option (see Typhoeus::Request#initialize)
      #
      # @return (see Typhoeus::Request#initialize)
      #
      # @note (see Typhoeus::Request#initialize)
      def post(url, options = {})
        Request.run(url, options.merge(:method => :post))
      end

      # Make a put request.
      #
      # @example Make put request.
      #   Typhoeus.put("www.example.com")
      #
      # @param (see Typhoeus::Request#initialize)
      #
      # @option options :params [ Hash ] Params hash which
      #   is attached to the url.
      # @option options :body [ Hash ] Body hash which
      #   becomes a PUT request body.
      #
      # @return (see Typhoeus::Request#initialize)
      #
      # @note (see Typhoeus::Request#initialize)
      def put(url, options = {})
        Request.run(url, options.merge(:method => :put))
      end

      # Make a delete request.
      #
      # @example Make delete request.
      #   Typhoeus.delete("www.example.com")
      #
      # @param (see Typhoeus::Request#initialize)
      #
      # @option (see Typhoeus::Request#initialize)
      #
      # @return (see Typhoeus::Request#initialize)
      #
      # @note (see Typhoeus::Request#initialize)
      def delete(url, options = {})
        Request.run(url, options.merge(:method => :delete))
      end

      # Make a head request.
      #
      # @example Make head request.
      #   Typhoeus.head("www.example.com")
      #
      # @param (see Typhoeus::Request#initialize)
      #
      # @option (see Typhoeus::Request#initialize)
      #
      # @return (see Typhoeus::Request#initialize)
      #
      # @note (see Typhoeus::Request#initialize)
      def head(url, options = {})
        Request.run(url, options.merge(:method => :head))
      end

      # Make a patch request.
      #
      # @example Make patch request.
      #   Typhoeus.patch("www.example.com")
      #
      # @param (see Typhoeus::Request#initialize)
      #
      # @option (see Typhoeus::Request#initialize)
      #
      # @return (see Typhoeus::Request#initialize)
      #
      # @note (see Typhoeus::Request#initialize)
      def patch(url, options = {})
        Request.run(url, options.merge(:method => :patch))
      end

      # Make a options request.
      #
      # @example Make options request.
      #   Typhoeus.options("www.example.com")
      #
      # @param (see Typhoeus::Request#initialize)
      #
      # @option (see Typhoeus::Request#initialize)
      #
      # @return (see Typhoeus::Request#initialize)
      #
      # @note (see Typhoeus::Request#initialize)
      def options(url, options = {})
        Request.run(url, options.merge(:method => :options))
      end
    end
  end
end
