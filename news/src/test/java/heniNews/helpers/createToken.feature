@HeniNews @Helpers
Feature: Get Auth Token

  @CreateTokenOk
  Scenario: Get Auth Token
    Given url authUrl
    And params { username: "#(userEmail)", password: "#(userPassword)"}
    When method GET
    Then status 200
    * def authToken = response
    * def authToken = karate.extract(authToken, '([^"]+)"', 1)