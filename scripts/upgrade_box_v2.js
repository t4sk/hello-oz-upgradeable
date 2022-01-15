// scripts/upgrade_box.js
const { ethers, upgrades } = require("hardhat");

const PROXY = "0xffC0F11c92F4E2e50b3f72Fd32BB3d034Ac77BDc";

async function main() {
    const BoxV2 = await ethers.getContractFactory("BoxV2");
    console.log("Upgrading Box...");
    await upgrades.upgradeProxy(PROXY, BoxV2);
    console.log("Box upgraded");
}

main();
