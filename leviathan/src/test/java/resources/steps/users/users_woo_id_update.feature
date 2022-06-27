@Leviathan @Users @UsersWooIdUpdate

Feature: Update a user by their Woo Id 

Background:
  * url leviathanUrl
  * params { display_name: 'Mark H', nickname: 'QA Expert', email: 'test@gmail.com', url: 'www.google.com', user_id: 12, first_name: 'Mark', second_name: 'Hughes', description: 'Test' }

Scenario: Update a users Woo ID
  Given path 'users_woo_id_update'
  When method POST
  Then status 200
  And response.custom == 'update_user_woo_id'