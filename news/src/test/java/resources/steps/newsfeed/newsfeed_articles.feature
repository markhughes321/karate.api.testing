@HeniNews @Newsfeed @NewsfeedArticles
Feature: Newsfeed Articles


Background:
  * def listArticles = read('classpath:heniNews/json/listArticles.json')
  * def articlesResponse = read('classpath:heniNews/response/articlesResponse.json')

@HENI-31 @ArticleAttributesOk
Scenario: Get List Articles
  Given url newsUrl
  And request listArticles
  And set listArticles.variables = {'visibility': 'feed', 'limit': 20, 'startDate': '2021-01-01T00:00:00.000Z'}
  When method POST
  Then status 200
  And match response.data.listArticles.articles == '#array'
  And match response.data.listArticles.articles == '#[20]'
  And match each response.data.listArticles.articles == articlesResponse