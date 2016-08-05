module Lyft
  module Api
    module Availability
      def ride_types(args = {})
        uri = Lyft.endpoint('/v1/ridetypes')
        options = {
          headers: {
            Authorization: "Bearer #{public_token.access_token}"
          }.as_json,
          query: {
            lat: args.fetch(:lat),
            lng: args.fetch(:lng)
          }
        }

        HTTParty.get(uri, options)
      end
    end
  end
end
