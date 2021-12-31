pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {

  // event SetPurpose(address sender, string purpose);

  string public purpose = "Building Unstoppable Apps!!!";

  address payable public owner;
  

  constructor() {
    // what should we do on deploy?
    owner = payable(msg.sender);
  }

  receive() external payable {}


    // Function to deposit Ether into this contract.
    // Call this function along with some Ether.
    // The balance of this contract will be automatically updated.
  function deposit() public payable {
      console.log(msg.sender, "Just deposited", msg.value);
      
  }


    // Call this function along with some Ether.
    // The function will throw an error since this function is not payable.
  function withdrawel(uint _withdrawelAmount) public{

  
    console.log(msg.sender, "Just sent", (address(this)), _withdrawelAmount);
    
    payable(msg.sender).transfer(address(this).balance);

  }





  function setPurpose(string memory newPurpose) public {
      purpose = newPurpose;
      console.log(msg.sender,"set purpose to",purpose);
      // emit SetPurpose(msg.sender, purpose);
  }

  //  function transfer(address payable _to, uint _amount) public {
  //       // Note that "to" is declared as payable
  //       (bool success, ) = _to.call{value: _amount}("");
  //       require(success, "Failed to send Ether");
  //   }

}
