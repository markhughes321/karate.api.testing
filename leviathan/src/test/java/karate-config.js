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
    config.leviathanUrl = 'http://34.240.237.62/wp-json/wc/v3/'
  } 
  else if (env == 'eph') {
    // customize
  }
  else if (env == 'stg') {
    // customize
  }
  
  return config;
}