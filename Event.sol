// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Event{
    event log(string message, uint value); // Created an event named " log declared var of string and uint.
    // only upto 3 parameters can be indexed
    event IndexedLog(address indexed sender, uint val);

    function example() external{
        emit log("foo", 1234);
        emit IndexedLog(msg.sender, 789);
    }// created a function named "example()" , here emit means store this on blockchain , and it will save "foo" and 1234.
    // this 3 rd line also does the same work as second line but it also stores address to indexed

    event Message(address indexed  _from, address indexed _to, string message);

    function sendMessage(address _to, string calldata message)external {
        emit Message(msg.sender, _to, message);

    }// created a function that takes address input, in secondline it says emit from msg.sender , to , and inputed string as an message.
}

// we use events to send messages to external applications.