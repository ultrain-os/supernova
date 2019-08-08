const config = {
  httpEndpoint:"https://pioneer.ultrain.services",
  httpEndpointHistory:"https://history-pioneer.ultrain.services",
  chainId:"13c654dcffbed7b6d615aa92b75ebf1a3049ff74ffe73fdeafb9113be6b6fe22",

  broadcast: true,
  sign: true,
  logger: {
    directory: "../../logs", // daily rotate file directory
    level: "info", // error->warn->info->verbose->debug->silly
    console: true, // print to console
    file: false // append to file
  },
  symbol: "UGAS",
  keyProvider:['5Ji5jnVi7AJ4EykJAEBooBLQmYqdtKWiChQ58JdcwKDomXNswHg'],
  //expireInSeconds:60
};
module.exports = config;
