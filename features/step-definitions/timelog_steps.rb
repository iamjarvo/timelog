require 'time'

Given /^the time is (\d+:\d+)$/ do |time|
  @time = Time.parse(time)
end

Given /^(\d+) minutes has passed$/ do |minute_count|
  seconds = minute_count.to_i * 60
  @time = @time + seconds
end
