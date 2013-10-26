require 'thor'
require 'kia'
require 'kia/commands/create'
require 'kia/commands/post'
require 'kia/commands/build'
require 'kia/commands/serve'

module Kia
  class CLI < Thor

    desc "kia create NAME", "Create a new kia project"
    def create(name)
      Kia::Commands::Create.start([name])
      puts "The project, #{name}, was created successfully"
    end

    desc "kia post NAME", "Create a new post"
    def post(name)
      if File.exist?("config.ru")
        Kia::Commands::Post.start([name])
      else
        puts "Hold on mate, you'll need to initialize a Kia project (kia init NAME) to be able to make posts."
      end
    end

    desc "kia build", "Generate a static site"
    def build
      if File.exist?("config.ru")
        Kia::Commands::Build.start
      else
        puts "Hold on mate, you'll need to initialize a Kia project (kia init NAME) to be able to make posts."
      end
    end

    desc "kia serve", "Serve a static site"
    def build
      if File.exist?("config.ru")
        Kia::Commands::Serve.start
      else
        puts "Hold on mate, you'll need to initialize a Kia project (kia init NAME) to be able to make posts."
      end
    end
  end
end
