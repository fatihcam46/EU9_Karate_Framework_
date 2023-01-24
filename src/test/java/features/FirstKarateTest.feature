Feature: welcome to karate
#1st
  Scenario: how to print
    Given print "Hello World"
    When print 'another print'
    Then print 'then print'

  Scenario: more printing
    Given print 'some words to print'
     * print 'my name is','karate kid'
      # , --> concat two strings +1 white space       #  * means when then and  any command
    * print 2+2
#  def means: define   + directly concat,   , comma making space

  Scenario: variables
    * def name = 'Mike'
    * print 'my name is' + name
    * def age = 20
    * print name,'is',age,'years old'

  Scenario: difficult parameters: json object
    * def student = {'name':'sam','owes_tuition':false}
    * print student
    * print student.name
    * print student.owes_tuition
#""" three double code up-down between write
  Scenario: json object 2
    * def student =
    """
    {
      "firstName":"Steven",
      "lastName":"King",
      "salary":2099
    }
    """
    * print student.salary
    * print student.firstName
    * print student.lastName
# from POSTMAN take a spartan: JSON format
  Scenario: Spartan Variable
    * def spartan =
  """
    {
    "id": 10,
    "name": "Lorenza",
    "gender": "Female",
    "phone": 3312820936
    }
    """
    * print spartan.gender
    * print spartan.phone
    * print spartan.name
    * print spartan.id

  Scenario: json array objects
    * def students =
    """
    [
      {
        'name':'sam',
        'owes_tuition':false
      },
      {
        'name':'mike',
        'owes_tuition':true
      }
    ]
    """

    * print students
    * print students[0].name
    * print students[1].owes_tuition

#students[0] first student

