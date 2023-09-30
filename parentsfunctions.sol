// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Animal {
    function eat() public pure {
        // do something
    }
}

contract Dog : Animal {
    function eat() public pure override {
        // do something else
        super.eat();
    }
}

/**
In this example, the Dog class's eat() function will first call the Animal class's eat() function. Then, it will do something else. This allows the Dog class to reuse the code from the Animal class, and to add its own functionality.


**/