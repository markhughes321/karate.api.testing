@HeniNews @SavedTags @ManageTags @parallel=false
  Feature: Manage Saved Tags


Background:
  * def setUserPreferences = read('classpath:heniNews/json/setUserPreferences.json')
  * def getUserPreferences = read('classpath:heniNews/json/getUserPreferences.json')

@HENI-35 @AddSavedTagOk
Scenario: Add Saved Tag
  Given url newsUrl
  And set setUserPreferences.variables.savedTags = {'type': 'geotag', 'value': 'New York'}
  And request setUserPreferences
  When method POST
  Then status 200
  And retry until match response.data.setUserPrefs.savedTags[0].type == 'geotag'
  And retry until match response.data.setUserPrefs.savedTags[0].value == 'New York'

@HENI-35 @GetSavedTagsOk
Scenario: Get Saved Tags
  Given url newsUrl
  And request getUserPreferences
  When method POST
  Then status 200
  And match each response.data.getUserPrefs.savedTags == 
  """
    {
      'type': '#regex (geotag|artist)',
      'value': '#string',
      '__typename': 'UserPrefsTag'
    }
  """

@HENI-35 @RemoveSavedTagOk
Scenario: Remove Saved Tag
  Given url newsUrl
  And set setUserPreferences.variables.savedTags = []
  And request setUserPreferences
  When method POST
  Then status 200
  And match response.data.setUserPrefs.savedTags == []