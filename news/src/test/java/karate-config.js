function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
  }
  if (env == 'dev') {
    config.authUrl = 'https://cfb8nrg1u6.execute-api.eu-west-1.amazonaws.com/v1/dev?'
    config.newsUrl = 'https://40us9yc67j.execute-api.eu-west-1.amazonaws.com/',
    config.userEmail = '4b21bfd4-0b47-41b6-b49f-f14e4f15458e@mailslurp.com',
    config.userPassword = 'Testing@1234'
  } 
  else if (env == 'eph') {
    // customize
  }
  else if (env == 'stg') {
    // customize
  }

  var accessToken = karate.callSingle('classpath:heniNews/helpers/createToken.feature', config).authToken
  karate.configure('headers', {Authorization: accessToken})

  return config;
}