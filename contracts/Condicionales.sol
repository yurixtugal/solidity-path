//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Condicionales {
    int public contador;

    constructor(){
        contador = 0;
    }

    function siONo(bool input) public {
        if (input){
            contador += 1;
        }else{
            contador -=1;
        }
    }

    function getContador() view public returns (int){
        return contador;
    }


}