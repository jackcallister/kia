require "thor/group"

module Kia
  module Commands
    class Post < Thor::Group
      include Thor::Actions

      argument :name, type: :string

      def self.source_root
        File.expand_path "../../../templates/", File.dirname(__FILE__)
      end

      def copy_template
        if File.directory?("_posts")
          template "new_post.md", "_posts/#{name}.md"
        else
          puts "Hold on mate, you'll need to initialize a Kia project (kia init NAME) to be able to make posts."
        end
      end
    end
  end
end