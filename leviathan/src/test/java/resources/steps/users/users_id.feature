@Leviathan @Users @UserId
Feature: Get the users ID

Background: 
  * url leviathanUrl
  * param email = 'a.gamit@heni.com'

@L20-0 @GetUserIdOk
Scenario: Get the users ID
  Given path 'users_id'
  When method GET
  Then status 200
  And match response.custom == 'users_id'
  And match response.data == 61