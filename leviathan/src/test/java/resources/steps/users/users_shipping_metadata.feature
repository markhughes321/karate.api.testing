@Leviathan @Users @UsersShippingMetadata

Feature: Update a user by their Woo Id 

Background:
  * url leviathanUrl
  * params { shipping_first_name: 'Mark H', shipping_last_name: 'QA Expert', shipping_company: 'DHL', shipping_address_1: 'www.google.com', shipping_address_2: 12, shipping_city: 'Mark', shipping_state: 'Hughes', shipping_postcode: 'Test', shipping_country: 'Ireland', shipping_phone: 'Ireland', woo_id: 'Ireland' }

@L20-0 @UsersShippingMetadataOk
Scenario: Update a users Woo ID
  Given path 'users_shipping_metadata'
  When method POST
  Then status 200
  And response.custom == 'update_user_woo_id'