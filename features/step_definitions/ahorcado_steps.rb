Given(/^inicio la aplicacion$/) do
	visit '/'
end

Then(/^ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

When(/^el jugador 1 hace un punto$/) do 
	submit_form("punto1")
end


