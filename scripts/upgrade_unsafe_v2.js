// scripts/upgrade_box.js
const { ethers, upgrades } = require("hardhat");

const PROXY = "0xD5177DE617540157404A3fbC4287eeD1C546646f";

async function main() {
  const UnsafeV2 = await ethers.getContractFactory("UnsafeV2");
  console.log("Upgrading Unsafe V2...");
  await upgrades.upgradeProxy(PROXY, UnsafeV2, {
    constructorArgs: [111],
  });
  console.log("Unsafe V2 upgraded");
}

main();
