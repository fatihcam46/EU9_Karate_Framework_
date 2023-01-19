Feature: Data driven review

  Scenario Outline: Search Spartan
    Given url 'http://3.87.65.105:8000/api/spartans/'
    And path 'search'
    And param gender = '<gender>'
    And param nameContains = '<nameContains>'
    When method get
    Then status 200

    Examples:
      | gender | nameContains |
      | Male   | ba           |
      | Female | ri           |


  Scenario Outline:  simple printing
    * print '<name>'
    * print '<lastName>'
    * print '<email>'

    Examples:
      | name  | lastName | email   |
      | Ahmet | Tan      | abc.com |
      | John  | Doe      | abc.com |
