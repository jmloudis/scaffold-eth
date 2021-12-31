pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {

  // event SetPurpose(address sender, string purpose);

  string public purpose = "Building Unstoppable Apps!!!";

  address public owner;

  constructor() {
    // what should we do on deploy?
    owner = msg.sender;
  }

  // function withdrawel() public {
  //   require(msg.sender == owner);
  //   msg.sender.transfer((address(this)).balance);
  // }

  function setPurpose(string memory newPurpose) public {
      purpose = newPurpose;
      console.log(msg.sender,"set purpose to",purpose);
      // emit SetPurpose(msg.sender, purpose);
  }
}
