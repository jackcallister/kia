require "thor/group"
require "tilt"

module Kia
  module Commands
    class Build < Thor::Group

      attr_accessor :templates

      def compile
        @templates = []

        files = Dir.glob(["**/source/*.erb"])

        files.each do |file|
          @templates << Tilt.new(file)
        end
      end

      def output
        @templates.each do |template|
          template.file.gsub!("source", "public").gsub!(".erb", "")

          File.open(template.file, "w") do |file|
            file.write(template.render)
          end
        end
      end
    end
  end
end
