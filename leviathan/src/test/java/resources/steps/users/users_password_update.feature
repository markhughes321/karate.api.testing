@Leviathan @Users @UserID @ignore
Feature: Get the users ID


@L20-0 @GetUserIdOk
Scenario: Get the users ID
  Given url leviathanUrl
  And params { email: "a.gamit@heni.com"}
  When method GET
  Then status 200