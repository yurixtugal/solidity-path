//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Estructura {

    struct Alumno {
        string nombre;
        uint documento;
    }

    Alumno[] private alumnos;

    constructor(){
        alumnos.push(Alumno({nombre: "Juan", documento:12345}));
        alumnos.push(Alumno({nombre: "Juan2", documento:123456}));
    }

    function getAlumnos() view public returns (Alumno[] memory){
        return alumnos;
    }

}