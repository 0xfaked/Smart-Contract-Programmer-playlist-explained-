// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MultipleInheritance{
    // when we inherit multiple contracts the least inherited contract should be added first what is mean is see next line :-\
    /** 
    contract x is single.
    contract y inherits contract x
    contract z inherits both contract x and y .

    so we have to inherit contract x , y and z to contract A ,
    we will add least inherited contract in this case it will be 
    x then y , and then z , should arrange inherited contracts in ascending order

    e.g:-
    contract A is X, Y, Z{} // if we don't arrange this neately contract will not compile.


    **/
}