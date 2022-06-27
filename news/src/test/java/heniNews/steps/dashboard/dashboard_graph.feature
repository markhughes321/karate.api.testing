@HeniNews @Dashboard @DashboardGraph
Feature: Get Dashboard By Name


Background:
  * def dashboardByName = read('classpath:heniNews/json/getDashboardByName.json')  
  * def headlineResponse = read('classpath:heniNews/response/headlineResponse.json')
      
@HENI-94 @DashboardGraphOk
Scenario Outline: Get Dashboard By Name
  Given url newsUrl
  And request dashboardByName
  And set dashboardByName.variables = {'name': 'Damien Hirst'}
  When method POST
  Then status 200
  And match response.data.getDashboardByName.name == 'Damien Hirst'
  And match response.data.getDashboardByName.type == 'ARTIST'
  And match each response.data.getDashboardByName.data[*].headline == headlineResponse
  And match each response.data.getDashboardByName.data[*].timeseries.<stats>[*] == '#number' 
  And match each response.data.getDashboardByName.data[*].timeseries.<stats>[*].length == '#[23]'
  And match each response.data.getDashboardByName.data[*].timeseries.date[*] == '#regex \\d{4}\-(0?[1-9]|1[012])\-(0?[1-9]|[12][0-9]|3[01])*'

  Examples:
    | stats               |
    | heniMentions        |
    | heniNftMentions     |
    | heniProfileMentions |
    | heniShowsMentions   |
    | marketSales         |
    | heniScore           |