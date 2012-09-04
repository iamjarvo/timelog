require 'date'

Given /^the time is (\d+:\d+)$/ do |time|
    @time = DateTime.parse(time)
end
