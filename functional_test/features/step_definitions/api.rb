When(/^I send a request to get my ip address$/) do
  @response = get_ip_address
  expect(@response['ip']).not_to be(nil)
end

Then(/^I get a response with my ip address$/) do
  expect(@response.code).to eq(200)
  expect(@response['ip']).not_to be(nil)
end

When(/^I send a request to retrieve my location$/) do
  @response = retrieve_location(@response['ip'])
  expect(@response.code).to eq(200)
end

Then(/^I get a response with my location$/) do
  expect(@response.code).to eq(200)
  expect(@response["country_name"]).to eq("United Kingdom")

end

When(/^I send a request to get weather forecast for my location$/) do
  @response = get_weather(@response['city'])
end

Then(/^I get a response with my weather forecast$/) do
  expect(@response.code).to eq(200)
  expect(@response['weather']).not_to be(nil)
end

Given(/^I have my ip address$/) do
  @response = get_ip_address

end

When(/^I send request to get weather for my location$/) do
  @response = get_weather(@response['city'])
end

Then(/^I get a response with my weather$/) do
  expect(@response.code).to eq(200)

end