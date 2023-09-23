const { ethers } = require("hardhat");

async function main() {

    const [deployer] = await ethers.getSigners();

    console.log(
    "Deploying contracts with the account:",
    deployer.address
    );
    const accountBalance = await deployer.provider.getBalance(deployer.address);   
    console.log("Account balance:", accountBalance);

    const Token = await ethers.getContractFactory("Floppy");
    const contract = await Token.deploy();

    console.log("Contract deployed at:", contract.address);
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });