//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract HolaMundo {
    string frase;

    constructor() {
        frase = "Hola x mundo";
    }
    //Memory indica que el string vivira en la memoria y no sera utilizado en la blockChain
    function getFrase() view public returns (string memory){
        return frase;
    }

}