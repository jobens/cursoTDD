Given(/^inicio la aplicacion$/) do
	visit '/'
end

Then(/^ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

When(/^adivino "(.*?)"$/) do |value|
	fill_in "letterValue", :with => value
  	submit_form("guess")
end




