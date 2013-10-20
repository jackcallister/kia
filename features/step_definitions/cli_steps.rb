Given(/^I have a kia project named "(.*?)"$/) do |name|
  # ALL of this gets run inside tmp/aruba.
  # Use aruba to touch a file inside "name" called config.rb
  # The we need to get the conditional inside post.rb working
  step %Q{a directory named "#{name}"}
  step %Q{I cd to "#{name}"}
  step %Q{an empty file named "config.rb"}
end