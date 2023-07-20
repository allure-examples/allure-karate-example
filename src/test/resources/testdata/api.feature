Feature: Api tests

  # @allure.id:14
  @allure.label.owner:npolly
  @allure.label.epic:APICalls
  @allure.label.story:WikiGETRequests
  Scenario: Simple get request
    * url 'https://en.wikipedia.org'
    * path '/wiki/ER'
    When method get
    Then status 200

  @allure.label.layer:unit_tests
  @allure.label.epic:APICalls
  @allure.label.story:WikiPOSTRequests
  @allure.severity:blocker
  @allure.label.tag:some_tag
  Scenario: Simple post request
    * url 'https://en.wikipedia.org'
    * path '/wiki/ER'
    When method post
    Then status 411