//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Ownable {

    address public owner;

    modifier onlyOwner {
        require(msg.sender == owner,"Not the charity");
        _;
    }


    constructor(){
        owner = msg.sender;
    }

}


contract PayableContract is Ownable{
    
    mapping (address => uint) public balanceOf;



    function deposit() payable public {
        balanceOf[msg.sender] = msg.value;
    }

    function getDonations(address add) view public returns (uint){
        return balanceOf[add];
    }
    
    function withDraw() public onlyOwner {
        payable(owner).transfer(address(this).balance);
    }


    

}