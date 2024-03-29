Feature: Web Test

  Background:
    * configure driver = { type: 'chrome' }

  @allure.label.owner:trrchacha
  @allure.label.epic:WebTestEpic
  @allure.label.story:GitHubLogin
  Scenario: try to login to github

    Given driver 'https://github.com/login'
    And screenshot()
    And input('#login_field', 'simple')
    And input('#password', 'check')
    And screenshot()
    When submit().click("input[name=commit]")
    Then match html('#js-flash-container') contains 'Incorrect username or password.'
