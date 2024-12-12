const hre = require("hardhat");

async function main() {
    // Get the contract factory
    const SayHey = await hre.ethers.getContractFactory("SayHey");

    // Deploy the contract
    const sayHey = await SayHey.deploy();

    // Wait for the deployment to finish
    // await sayHey.deployed();

    // Log the contract address
    console.log("Contract deployed to:", sayHey.address);

    // Interact with the contract
    console.log("Initial message:", await sayHey.message());

    // Update the message
    await sayHey.setHey("Hi, Blockchain!");
    console.log("Updated message:", await sayHey.getHey());
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
