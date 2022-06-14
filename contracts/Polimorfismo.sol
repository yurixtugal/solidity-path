//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./ISuma.sol";

contract Polimorfismo {

    function sumarDesdeContrato(uint numero1, uint numero2, address direccionContrato) public view returns(uint){
        ISuma interfaceSuma = ISuma(direccionContrato);
        return interfaceSuma.suma(numero1,numero2);
    }

}