require 'thor'
require 'kia'
require 'kia/commands/create'
require 'kia/commands/post'
require 'kia/commands/build'

module Kia
  class CLI < Thor

    desc "kia create NAME", "Create a new kia project"
    def create(name)
      Kia::Commands::Create.start([name])
      puts "The project, #{name}, was created successfully"
    end

    desc "kia post NAME", "Create a new post"
    def post(name)
      Kia::Commands::Post.start([name])
    end

    desc "kia build", "Generate a static site"
    def build
      Kia::Commands::Build.start
    end
  end
end
