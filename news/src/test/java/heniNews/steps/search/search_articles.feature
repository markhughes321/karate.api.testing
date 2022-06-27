  @HeniNews @Search @SearchArticles
  Feature: Search Articles


Background:
  * def searchArticles = read('classpath:heniNews/json/searchArticles.json')
  * def articlesResponse = read('classpath:heniNews/response/articlesResponse.json')
  * set searchArticles.variables = {'phrase': phrase, 'visibility': 'search', 'limit': 20, 'startDate': '2021-01-01T00:00:00.000Z'}

@HENI-59 @SearchArticlesOk
Scenario Outline: Search Articles
  Given url newsUrl 
  And request searchArticles
  When method POST
  Then status 200
  And match each response.data.searchArticles.articles == articlesResponse

  Examples:
    | phrase                |
    | Damien Hirst          |
    | Yuga Labs             |
    | Victor Marie Hugo     |
    | W.B. Yeats            |
    | Jean-Michel Basquiat  |