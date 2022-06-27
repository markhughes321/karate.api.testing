@HeniNews @Settings @Newsletter
Feature: Newsletter Preferences


Background:
  * def setUserPreferences = read('classpath:heniNews/json/setUserPreferences.json')

@HENI-475 @NewsletterPreferencesOk
Scenario Outline: User can update their Newsletter preferences
  Given url newsUrl
  And request setUserPreferences
  And set setUserPreferences.variables.newsletterOptIn = preference
  When method POST
  Then status 200
  And match response.data.setUserPrefs.newsletterOptIn == '#boolean'

  Examples: 
    | preference!  |
    | true         |
    | false        |