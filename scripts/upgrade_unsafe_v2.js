const { ethers, upgrades } = require("hardhat");

const PROXY = "0xC05d24b61d91b914D6f51A3Bd1AEC62cb42B04dD";

async function main() {
    const UnsafeV2 = await ethers.getContractFactory("UnsafeV2");
    console.log("Upgrading Unsafe V2...");
    await upgrades.upgradeProxy(PROXY, UnsafeV2, {
        constructorArgs: [111],
    });
    console.log("Unsafe V2 upgraded");
}

main();
