@HeniNews @Dashboard @DashboardStats
Feature: Dashboard Stats


Background:
  * def dashboardStats = read('classpath:heniNews/json/searchArticles.json')
  * def articlesResponse = read('classpath:heniNews/response/articlesResponse.json')

@HENI-94 @DashboardArticlesOk @DashboardStatsOk
Scenario Outline: Users can browse artist dashboard stats
  Given url newsUrl 
  And request dashboardStats
  And set dashboardStats.variables = {<search>: <dashboard>, 'category': <category>, 'visibility': 'search', 'limit': 20, 'startDate': '2021-01-01T00:00:00.000Z'}
  When method POST
  Then status 200
  And match each <response> contains '<dashboard>'
  And match each response.data.searchArticles.articles[*].categories[0] contains '<category>'
  And match each response.data.searchArticles.articles == articlesResponse

  Examples:
    |  search  | dashboard     | category  | response                                             |
    |  artist  | Damien Hirst  | Market    | response.data.searchArticles.articles[*].artists[0]  |
    |  artist  | Damien Hirst  | NFT       | response.data.searchArticles.articles[*].artists[0]  |
    |  artist  | Damien Hirst  | Shows     | response.data.searchArticles.articles[*].artists[0]  |
    |  artist  | Damien Hirst  | Profiles  | response.data.searchArticles.articles[*].artists[0]  |
    |  phrase  | London        | Market    | response.data.searchArticles.articles[*].geotag      |
    |  phrase  | London        | NFT       | response.data.searchArticles.articles[*].geotag      |
    |  phrase  | London        | Shows     | response.data.searchArticles.articles[*].geotag      |
    |  phrase  | London        | Profiles  | response.data.searchArticles.articles[*].geotag      |