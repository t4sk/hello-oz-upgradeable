# Basic Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, a sample script that deploys that contract, and an example of a task implementation, which simply lists the available accounts.

Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
node scripts/sample-script.js
npx hardhat help
```

- transparent and UUPS
- review proxy / delegatecall
- oz contracts (Proxy, ProxyAdmin and Implementation)
- simple upgrade (initialize)
- donts (constructor, uninitialezed, reorder storage, kill)

- ERC20 upgrade

```shell
npx hardhat node
npx hardhat run --network localhost scripts/deploy_box_v1.js
npx hardhat run --network localhost scripts/upgrade_box_v2.js
```
