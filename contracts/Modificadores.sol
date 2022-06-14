//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Modificadores {

    address private owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner,"Solo el duenio del contrato lo puede ejecutar");
        _;
    }

    function obtenerValor() view public onlyOwner() returns(string memory){
        return "Hola mundo";
    }

}