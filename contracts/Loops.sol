//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
//Loops deben ser acotados
contract Loops {
    uint[] datos;

    function repetir(uint numero) public {
        for(uint i=0; i<numero;i++){
            datos.push(i);
        }
    }

    function getDatos() view public returns(uint[] memory){
        return datos;
    }

}