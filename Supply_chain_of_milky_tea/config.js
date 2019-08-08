/* 测试
const config = {
  httpEndpoint: "http://127.0.0.1:8888",
  httpEndpointHistory: "http://127.0.0.1:3000",
  chainId: "80a5d6aa3e0c2e2052c3df1cc6b591b90b8307fb102bd174805e06c8b8b16ec1",
  broadcast: true,
  sign: true,
  logger: {
    directory: "../../logs", // daily rotate file directory
    level: "info", // error->warn->info->verbose->debug->silly
    console: true, // print to console
    file: false // append to file
  },
  symbol: "UGAS",
  keyProvider: ["5JbedY3jGfNK7HcLXcqGqSYrmX2n8wQWqZAuq6K7Gcf4Dj62UfL"]
  //expireInSeconds:60
};
module.exports = config;
*/

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
  //keyProvider:['改为你申请的测试网账号的私钥'],
  //expireInSeconds:60  
  //keyProvider: []
};
module.exports = config;