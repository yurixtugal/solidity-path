//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract TipoDato {

    int cantidad;
    uint cantidadSinSigno;
    address direccion;
    bool firmado;

    

    constructor(bool estaFirmado){
        direccion = msg.sender;
        firmado = estaFirmado;
    }

}