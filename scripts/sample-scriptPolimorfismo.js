// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// When running the script with `npx hardhat run <script>` you'll find the Hardhat
// Runtime Environment's members available in the global scope.
const hre = require("hardhat");

async function main() {
  // Hardhat always runs the compile task when running scripts with its command
  // line interface.
  //
  // If this script is run directly using `node` you may want to call compile
  // manually to make sure everything is compiled
  // await hre.run('compile');

  // We get the contract to deploy
  const Suma = await hre.ethers.getContractFactory("Herencia");
  const suma = await Suma.deploy();
  
  const Polimorfismo = await hre.ethers.getContractFactory("Polimorfismo");
  const polimorfismo = await Polimorfismo.deploy();

  //await holaMundito.deployed();
  console.log("holaMundito deployed to:",await polimorfismo.sumarDesdeContrato(1,2,"0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266") );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
