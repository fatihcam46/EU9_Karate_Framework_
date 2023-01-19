Feature: api test review

  Background:
    Given url 'http://3.87.65.105:8000/api/spartans'
#    When method GET

  Scenario: status code test
    Given url 'http://3.87.65.105:8000/api/spartans'
    When method GET
    Then status 200


  Scenario: header test
    Then match header Content-Type == 'application/json'
    And match header Connection == 'keep-alive'
    And match header Date == '#present'

  Scenario: response body test path paramete
    Given path '/20'
    When method get
    And match response.id == 20
    And match response.gender == 'Male'
    And print response


  Scenario: query parameter
    Given path '/search'
    And param nameContains = 'va'
    And param gender = 'Male'
    When method get
    Then status 200
    And print response
