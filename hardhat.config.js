/**
 * @type import('hardhat/config').HardhatUserConfig
 */

require("@nomiclabs/hardhat-solhint")
require("@nomiclabs/hardhat-ganache")
require("@nomiclabs/hardhat-web3")
require("@nomicfoundation/hardhat-toolbox")
require("@nomiclabs/hardhat-ethers");
require("hardhat-gas-reporter");
const fs = require("fs")
const axios = require('axios')
const ethers = require('ethers')

// attempt to read private key
let private = "0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80"
try {
  private = fs.readFileSync(process.env.HOME+"/.privatekey").toString().strip()
} catch {
}


module.exports = {
  //defaultNetwork: "hardhat",
  networks: {
    hardhat: {
      chainid:31337,
      forking:{
      url: process.env.Mainnet_RPC_URL,
      accounts: ["0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80"],
      timeout: 60000_00000,
    },
    localhost: {
      chainid:10,
      forking:{
      url: "http://192.168.1.1:8543/",
      accounts: ["0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80"],
      timeout: 600000_000000,
    },
  },
  solidity: {
    version: "0.8.7",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  },
};
