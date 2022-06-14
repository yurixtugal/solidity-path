// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0;

contract Eventos {
    
    uint[] public numeros;
    string public resultado;
    
    event NotificacionDeCondicion(bool condicion);
    
    constructor(bool condicion) {
        if (condicion) {
            resultado = "Condicion True";
        }
        else {
            resultado = "Condicion False";
        }
        
        emit NotificacionDeCondicion(condicion);
        
        for (uint iterador = 0; iterador < 10; iterador++) {
            numeros.push(iterador);
        }
    }

    function getNumeros() view public returns(uint[] memory){
        return numeros;
    }
    
}