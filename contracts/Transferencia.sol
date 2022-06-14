//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Transfer {

    constructor() payable {

    }


    function transferBySend(address to, uint amount) public returns (bool){
        bool result = payable(to).send(amount);
        return result;
    }

    function transferByTransfer(address to, uint amount) public {
        payable(to).transfer(amount);
    }

    function transferByCall(address to, uint amount) public returns (bool){
            (bool result, bytes memory respuesta) = to.call{value:amount}("");
            respuesta;
            return result;
    }
 
}    