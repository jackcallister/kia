require "thor/group"

module Kia
  module Commands
    class Serve < Thor::Group

      def begin
        system 'rackup'
      end
    end
  end
end
