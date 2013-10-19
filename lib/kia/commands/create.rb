require 'thor/group'

module Kia
  module Commands
    class Create < Thor::Group
      include Thor::Actions

      argument :name, type: :string

      def create_site
        FileUtils.cp_r Kia::Commands::Create.site_template, "./#{name}"
      end

      def self.site_template
        File.expand_path "../../../templates/site", File.dirname(__FILE__)
      end
    end
  end
end
