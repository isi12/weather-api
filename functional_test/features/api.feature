
Feature: Ip address

  i want to get my ip address

  Scenario: Get ip address
    When I send a request to get my ip address
    Then I get a response with my ip address


  Scenario: Retrieve Location
    Given I send a request to get my ip address
    When I send a request to retrieve my location
    Then I get a response with my location

  Scenario: Get weather forecast for location
    Given I send a request to get my ip address
    When I send a request to get weather forecast for my location
    Then I get a response with my weather forecast

    Scenario: Get weather forecast
      Given I send a request to get my ip address
      And  I send a request to retrieve my location
      When I send request to get weather for my location
      Then I get a response with my weather