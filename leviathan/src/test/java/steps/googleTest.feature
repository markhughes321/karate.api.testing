@leviathan
Feature: Dashboard Stats


Background:
  * def googleUrl = 'https://www.google.com'

Scenario: Users can browse artist dashboard stats
  Given url googleUrl 
  When method GET
  Then status 200