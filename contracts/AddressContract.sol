//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract AddressContract {
    address public creador;

    constructor(){
        creador = msg.sender;
    }

    function getCreador() view public returns (address){
        return creador;
    }


}