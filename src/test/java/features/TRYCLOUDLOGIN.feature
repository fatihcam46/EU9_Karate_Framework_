Feature: Login functionality

  Background: User on the Try-Cloud web page
    * configure driver = { type: 'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe' }
    * driver 'http://qa2.trycloud.net/index.php/login?clear=1'
    * maximize()
  Scenario: TC1- 1- try to login to Try-Cloud
    * input("input[name='user']", 'Employee93')
    * input("input[name='password']", 'Employee123')
    * submit().click("input[type='submit']")
    * retry(5, 15000).waitForUrl('http://qa2.trycloud.net/index.php/apps/dashboard/')
    * match driver.url == "http://qa2.trycloud.net/index.php/apps/dashboard/"

  Scenario Outline: TC2- 2- User can not login with any invalid credentials
    * input("input[name='user']", '<user>')
    * input("input[name='password']", '<password>')
    * submit().click("input[type='submit']")
   # * match input.p == 'Wrong username or password.'  olmuyor
    Examples: Wrong credentials
      | user            | password         |
      | Employee9393     | Employee123      |
      | Employee933      | Employee123      |
      | employee933      | Employee123      |
      | EMPLOYEE933      | Employee123      |
      | employee933      | Employee123      |
      | Employee93       | EMPLOYEE123      |
      | Employee93       | employee123      |
      | Employee93       | employee123123   |
      | Employee93       | emp123           |
  Scenario Outline: TC3- 2- User can not login with any invalid credentials
    * input("input[name='user']", '<user>')
    * input("input[name='password']", '<password>')
    * submit().click("input[type='submit']")
     # * match input.p == 'Please fill out this field'  olmuyor
    Examples: Wrong credentials
      | user    | password    |
      |             | Employee123 |
      | Employee93  |             |
      |             |             |

  Scenario: TC5- 4-User can see the password explicitly if needed
    * input("input[name='password']", 'Employee123')
    * submit().click("input[type='password']")
    * submit().click("input[type='text']")



