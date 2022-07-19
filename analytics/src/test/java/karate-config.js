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
    config.analyticsUrl = 'https://5kqpfz6aeja4fkgyqesiccumli.appsync-api.us-east-2.amazonaws.com/graphql'
    karate.configure('headers', { 'x-api-key': 'da2-32znkbrytvg7jezrn2hyoofpnm' });
  } 
  else if (env == 'eph') {
    // customize
  }
  else if (env == 'stg') {
    // customize
  }
  
  return config;
}
