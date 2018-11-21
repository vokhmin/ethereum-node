/*
 * NB: since truffle-hdwallet-provider 0.0.5 you must wrap HDWallet providers in a 
 * function when declaring them. Failure to do so will cause commands to hang. ex:
 * ```
 * mainnet: {
 *     provider: function() { 
 *       return new HDWalletProvider(mnemonic, 'https://mainnet.infura.io/<infura-key>') 
 *     },
 *     network_id: '1',
 *     gas: 4500000,
 *     gasPrice: 10000000000,
 *   },
 */

module.exports = {
    // See <http://truffleframework.com/docs/advanced/configuration>
    // to customize your Truffle configuration!
    networks: {
        "local": {
            network_id: "*",
            host: "127.0.0.1",
            port: 8545, 	// Different than the default below
            from: "0x7F34a023Fa2e16559eC7B6066491C17d73531736",
            gas: 47000000
        }
    },
    networks: {
        "devs": {
            network_id: "*",
            host: "eth-node",
            port: 8545, 	// Different than the default below
            // from: "0x007ccffb7916f37f7aeef05e8096ecfbe55afc2f",
            from: "0x7f34a023fa2e16559ec7b6066491c17d73531736",
            gas: 4700000
        }
    },
    rpc: {
        host: "127.0.0.1",
        port: 8545
    }
};
