const config = {
  httpEndpoint:"http://pioneer.natapp1.cc",
  httpEndpointHistory:"http://pioneer-history.natapp1.cc",
  chainId:"20c35b993c10b5ea1007014857bb2b8832fb8ae22e9dcfdc61dacf336af4450f",

  broadcast: true,
  sign: true,
  logger: {
    directory: "../../logs", // daily rotate file directory
    level: "info", // error->warn->info->verbose->debug->silly
    console: true, // print to console
    file: false // append to file
  },
  symbol: "UGAS",
  keyProvider:['5J9bWm2ThenDm3tjvmUgHtWCVMUdjRR1pxnRtnJjvKA4b2ut5WK'],
  //expireInSeconds:60
};
module.exports = config;
