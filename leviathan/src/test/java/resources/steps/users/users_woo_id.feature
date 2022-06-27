@Leviathan @Users @UserWooId
Feature: Get the shop manager information

Background: 
  * url leviathanUrl
  * def userWooIdResponse = read('classpath:resources/responses/users_woo_id.json')
  * param woo_id = 1

@L20-0 @UserWooIdOk
Scenario: Get shop manager by Woo ID
  Given path 'users_woo_id'
  When method GET
  Then status 200
  And match response == userWooIdResponse