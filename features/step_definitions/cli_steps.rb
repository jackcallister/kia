Given(/^I have a kia project named "(.*?)"$/) do |name|
  # ALL of this gets run inside tmp/aruba.
  step %Q{I run `kia create #{name}`}
  step %Q{I cd to "#{name}"}
end