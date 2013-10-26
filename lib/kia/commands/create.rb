require 'thor/group'

module Kia
  module Commands
    class Create < Thor::Group
      include Thor::Actions

      argument :name, type: :string

      def self.template_path
        File.expand_path "../../../templates/site", File.dirname(__FILE__)
      end

      def create_site
        FileUtils.cp_r Kia::Commands::Create.template_path, "./#{name}"
      end
    end
  end
end
