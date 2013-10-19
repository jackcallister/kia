require "thor/group"
require "stasis"

module Kia
  module Commands
    class Build < Thor::Group

      def compile_site
        system "stasis"
      end
    end
  end
end
