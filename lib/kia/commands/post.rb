require "thor/group"

module Kia
  module Commands
    class Post < Thor::Group
      include Thor::Actions

      argument :name, type: :string

      def self.source_root
        File.expand_path "../../../templates/files/", File.dirname(__FILE__)
      end

      def copy_template
        template "post.html.md", "source/posts/#{name}.html.md"
      end
    end
  end
end
