@Leviathan @Users @UsersMetadadaWooId
Feature: Get the shop manager information

Background: 
  * url leviathanUrl
  * def usersMetdataWooId = read('classpath:resources/responses/users_metadata_woo_id.json')
  * param woo_id = 1

@L20-0 @UserWooIdOk
Scenario: Get shop manager by Woo ID
  Given path 'usersmeta_woo_id'
  When method GET
  Then status 200
  And match response == usersMetdataWooId