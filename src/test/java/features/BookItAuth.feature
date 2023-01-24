Feature: get user token
  @Test
    Scenario: get one user token
      Given url 'https://cybertek-reservation-api-qa3.herokuapp.com/'
      And path 'sign'
      And header Accept = 'application/json'
      And param email = 'sbirdbj@fc2.com'
      And param password = 'asenorval'
      When method GET
      Then status 200
      And print response.accessToken
      And def token = response.accessToken
      And def name = 'steven'

    #6th feature
  #looks like POSTMAN request to response
  #from
  #request ..response and take accesstoken