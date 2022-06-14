// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0;

contract Fuinciones {
    
    uint private resultado;
    
    function suma(uint numero1, uint numero2) pure public returns (uint){
        return sumaInterna(numero1, numero2);
    }

    function sumaInterna(uint numero1, uint numero2) pure private returns (uint){
        return numero1 + numero2;
    }


    function obtenerResultado() view public returns (uint){
        return resultado;
    }

}
