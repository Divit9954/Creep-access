module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545, // Use the correct port where Ganache is running
      network_id: "*",
      gas: 6721975,
      gasPrice: 20000000000
    }
  },
  compilers: {
    solc: {
      version: "0.8.0", // Match your Solidity version
    }
  }
};
