  @HeniNews @Newsfeed @NewsfeedCategories
  Feature: Newsfeed Categories


Background:
  * def searchCatergory = read('classpath:heniNews/json/searchArticles.json')
  * def articlesResponse = read('classpath:heniNews/response/articlesResponse.json')

@HENI-40 @CategoriesOk
Scenario Outline: Search Categories
  Given url newsUrl 
  And request searchCatergory
  And set searchCatergory.variables = {'category': <category>, 'visibility': 'feed', 'limit': 20, 'startDate': '2021-01-01T00:00:00.000Z'}
  When method POST
  Then status 200
  And print response.data.searchArticles.articles
  And match each response.data.searchArticles.articles[*].categories contains '<category>'
  And match each response.data.searchArticles.articles == articlesResponse

  Examples:
    | category  |
    | ShoutOuts |
    | NFT       |
    | Market    |
    | Museum    |
    | Legal     |
    | Moves     |
    | Shows     |
    | Profiles  |