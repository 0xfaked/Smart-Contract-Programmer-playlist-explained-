// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
/** 
    if we send empty data to blockchain then receive() function will be triggered
    and when non-empty data is send to blockchain or any function is called that is not present in blockchain it will trigger fallback() function.
    and if receive function does not exist it will trigger fallback function if the transaction is empty.


**/
contract Fallback{
    event Log(string func, address sender, uint value, bytes data);

    fallback() external payable {
        emit Log("fallback", msg.sender, msg.value, msg.data);
    }
    receive() external  payable {
        emit Log("receive", msg.sender, msg.value, "");
    }
}