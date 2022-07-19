@Analytics @Collections @ListCollectionStats
Feature: Users can get statistical data on NFT Collections 

Background: 
  * def listCollectionStats = read('classpath:/resources/queries/listCollectionStats.txt')


@HNA-128 @GetCollectionStatsOk
Scenario: Get collection stats by volume
  Given url analyticsUrl
  And request { query: '#(listCollectionStats)'}
  When method POST
  Then status 200
  And print response
  And match response.data.listCollectionStats ==
  """
  [
    {
      "buyers": #number,
      "collectionAddress": #string,
      "collectionName": #string,
      "icons": #string,
      "nftsTraded": #number,
      "order": #number,
      "owners": #number,,
      "period": #string,
      "salesGraph": #array,
      "volumeUSD": #number,
      "volumeETH": #number
    }
  ]
  """