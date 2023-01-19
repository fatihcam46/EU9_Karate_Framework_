Feature: use java or other feature file

  Scenario: use java with karate
    * def Spartan = Java.type('utilities.SpartanDataGenerator')
    * def firstSpartan = Spartan.createSpartan()
    * print firstSpartan
    * print firstSpartan.name

  Scenario: use other feature files
    Given def Auth = call read('classpath:features/BookItAuth.feature')
    * def token = Auth.token
    * def name = Auth.name
    * print token
    * print name