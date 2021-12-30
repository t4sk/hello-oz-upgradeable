# Basic Sample Hardhat Project

- simple upgrade
- unsafe (constructor, uninitialezed, reorder storage, kill)
- ERC20 upgrade

```shell
env $(cat .env) npx hardhat run --network ropsten scripts/deploy_box_v1.js
env $(cat .env) npx hardhat run --network ropsten scripts/upgrade_box_v2.js

IMP_ADDR=0x0f3ed00838a3180E32707D5997184f7AEa00433d
env $(cat .env) npx hardhat verify --network ropsten $IMP_ADDR
```
