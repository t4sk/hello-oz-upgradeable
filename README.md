# Hello Open Zeppelin Upgradeable Contracts

-   [x] simple upgrade (deploy, verify, verify proxy, upgrade)
-   [ ] unsafe (constructor, initialize more than once, reorder storage, kill)
-   [ ] ERC20 upgrade

```shell
npx hardhat compile

# 3 transactions (deploy V1, ProxyAdmin and proxy)
env $(cat .env) npx hardhat run --network ropsten scripts/deploy_box_v1.js
# 2 transactions (deploy V2, ProxyAdmin.upgrade)
env $(cat .env) npx hardhat run --network ropsten scripts/upgrade_box_v2.js

IMP=0x892f0dF05f993A7050F0e2DFC865b170776d3759
IMP=0xd0e76D0ea91f25Ce0Ad3e48e3CeD94d98806Fe6d
env $(cat .env) npx hardhat verify --network ropsten $IMP
```
