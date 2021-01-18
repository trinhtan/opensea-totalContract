require('dotenv').config();

var HDWalletProvider = require('@truffle/hdwallet-provider');

module.exports = {
  networks: {
    ropsten: {
      networkCheckTimeout: 100000,
      provider: function () {
        return new HDWalletProvider(
          process.env.ETH_OPERATOR_MNEMONIC,
          'https://ropsten.infura.io/v3/'.concat(process.env.INFURA_PROJECT_ID)
        );
      },
      network_id: 3,
      gas: 6721975,
    },
  },
  rpc: {
    host: 'localhost',
    post: 8080,
  },
  mocha: {
    useColors: true,
  },
};
