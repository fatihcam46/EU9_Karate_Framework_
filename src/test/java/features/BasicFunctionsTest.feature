

Feature: Basic functions

  Scenario: methods
    Given print "Cydeo"
    Given print 'EU 9'
    Given print 8*9
    Given print 9+6
    * print 'This is Eu9 ','Karate Review'

  @Review
  Scenario: Define variables
    * def a = 7
    * print a
    * def data = 19
    * def month = 'Jan'
    * print 'Today is ',month,' ',data

  Scenario: Json objects
    * def spartan1 = {"id":2,"name":"Jerry","gender":"Male","phone":5698741236}
    * def spartan2 =
      """
{
    "id": 2,
    "name": "Jerry",
    "gender": "Male",
    "phone": 5698741236
}
      """

    * print spartan1
    * print spartan2
    * print spartan1.name
    * print spartan2.gender


  Scenario: Arrays
    Given def spartan =
      """
       {
    "content": [
        {
            "id": 25,
            "name": "Valentin",
            "gender": "Male",
            "phone": 1536037088
        },
        {
            "id": 944,
            "name": "Vallie",
            "gender": "Male",
            "phone": 9516284951
        }
    ],
    "totalElement": 2
}
      """
    * print spartan.content[0].name
    * print spartan.content[1].id
    * def number = spartan.totalElement
    * print number
    * match spartan.content[1].id == 944


  Scenario: Asserting or matching
    Given def str1 = 'Cydeo'
    Given def str2 = 'Cydeo'
    Given def str3 = 'Cydeo3'
    When match str1 == str2
    When match str1 != str3

    Scenario: Fuzzy matching
      Given def spartan =
    """
    {
        "id": 2,
        "name": "Jerry",
        "gender": "Male",
        "phone": 5698741236
      }
    """
      * match spartan.id == '#number'
      * match spartan.name == '#present'
      * match spartan.phone == '#number'

      Scenario: Contains method
        * def spartan =
    """
    {
    "content": [
        {
            "id": 25,
            "name": "Valentin",
            "gender": "Male",
            "phone": 1536037088
        },
        {
            "id": 944,
            "name": "Vallie",
            "gender": "Male",
            "phone": 9516284951
        }
    ],
    "totalElement": 2
}
    """
        * print spartan.content.length
        * match spartan.content contains {'id':944, 'name':'Vallie','gender':'Male','phone':9516284951}
        * def list = {list: [10,20,30]}
        * match list.list contains any [10,30,50,70]


