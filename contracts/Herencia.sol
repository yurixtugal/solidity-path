//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import './ISuma.sol';
import './Modificadores.sol';

contract Herencia is ISuma, Modificadores {

    
  function suma(uint numero1, uint numero2) external  override onlyOwner() view  returns(uint){
    return numero1+numero2;
  }


}