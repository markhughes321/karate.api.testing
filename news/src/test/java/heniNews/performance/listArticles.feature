@HeniNews @Articles @Performance
Feature: UserSimulation


  Background:
    * def ListArticles = read('classpath:heniNews/json/listArticles.json')

  @ListArticlesOk
  Scenario: Get List Articles
    Given url newsUrl
    And request ListArticles
    When method POST
    Then status 200