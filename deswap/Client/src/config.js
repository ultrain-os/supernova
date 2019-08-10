
const configSwitch = (env) => {
    switch (env) {
        case 'development':
            return {
                u3: {
                    httpEndpoint:"http://pioneer.natapp1.cc",
                    httpEndpointHistory:"http://pioneer-history.natapp1.cc",
                    chainId:"20c35b993c10b5ea1007014857bb2b8832fb8ae22e9dcfdc61dacf336af4450f",
                    broadcast: true,
                    sign: true,
                    logger: {
                        directory: "../../logs", // daily rotate file directory
                        level: "info", // error->warn->info->verbose->debug->silly
                        console: false, // print to console
                        file: false // append to file
                    },
                    symbol: "dasan",
                    keyProvider: '5K6HBwvXpd5Qrvg5yuex3MnJvNYjdyHJeR4wurtfAxVini8PU3Z'

                    //expireInSeconds:60
                }
            }
        case 'production':
            return {
                u3: {
                    httpEndpoint:"http://pioneer.natapp1.cc",
                    httpEndpointHistory:"http://pioneer-history.natapp1.cc",
                    chainId:"20c35b993c10b5ea1007014857bb2b8832fb8ae22e9dcfdc61dacf336af4450f",
                    broadcast: true,
                    sign: true,
                    logger: {
                        directory: "../../logs", // daily rotate file directory
                        level: "info", // error->warn->info->verbose->debug->silly
                        console: false, // print to console
                        file: false // append to file
                    },
                    symbol: "dasan",
                    keyProvider: '5K6HBwvXpd5Qrvg5yuex3MnJvNYjdyHJeR4wurtfAxVini8PU3Z'
                    //expireInSeconds:60
                }
            }
    }
}

const config = configSwitch(process.env.REACT_APP_ENV)

export default config
