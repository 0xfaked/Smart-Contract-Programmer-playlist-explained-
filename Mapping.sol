// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/** 
Mapping
how to declare a mapping (simple and nested)
set, get , delete.
**/

contract Mappings{
    mapping(address => uint) public balances;// here key is address and value is uint and we named it balances, this is a simple mapping,This mapping will represent the balance of each address.
    mapping(address => mapping(address => bool)) public isFriend;//here we've created a nested mapping, which sees the address we provided are true or false, means they are genuine or not.

    function examples() external {//created an examples function
        balances[msg.sender] = 123; // have set the value of msg.sender to 123. 
        uint bal = balances[msg.sender]; // assigned the balances to bal var. 
        uint bal2 = balances[address(1)]; // we will get the balance value of address 1.

        balances[msg.sender] += 456; // here += operator means add 456 to sender address means e.g( 123 + 456) . 

        delete balances[msg.sender]; // it will delete all the balance value of msg.sender to default value which is 0.

        isFriend[msg.sender][address(this)] = true; // msg.sender = Contract caller (Who is calling your contract) tx.origin = Transaction initiator , This means the contract address(Deployer).
    }
}