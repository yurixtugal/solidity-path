//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Saldo {


    mapping(address => uint) balance;

    enum Estado {Inicializado,Finalizado}

    Estado estadoContrato;

    constructor(){
        estadoContrato = Estado.Inicializado;

        balance[msg.sender] = 1000;


        estadoContrato = Estado.Finalizado;
    }

   function  getBalance() view public returns (uint){
        return balance[msg.sender];
    }



}   