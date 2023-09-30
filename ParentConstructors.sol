// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract S{
    string public name;

    constructor(string memory _name){
        name = _name;
    }
}

contract U is S("s"){} // this way we can initialized parent constructor from another contracts while inheritance, there is also another way letss goo.

contract V1 is S{
    constructor(string memory _name) S(_name){}
}
// This is another way of initialization of parent constructors.

//Order of Execution :-
/**
1. S
2. T
3. v1

here the order should be like inheritance order. For e.g contract S & contract T is inherited by contract v1 
then S should be execute first in inherited constructor of an contract see line 15.
**/