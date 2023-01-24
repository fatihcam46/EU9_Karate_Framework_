Feature: Basic ui test review

  Scenario: Google search
    * configure driver = { type: 'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe' }
    * driver 'https://www.google.com'
    * input("input[name='q']",'Cydeo')
    #input  (tagname [])
    * submit().click("button[type='submit']")
    * match driver.title == 'Google'
    * print driver.url