//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Constants{
    address public constant My_Address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 ;
    uint public constant m_uint = 123;

}//69300 gas

contract Var {
    address public My_Address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

}// 149000 gas

/**  
we use constant function when we know that the value of that variable will not change, like address contractdeployer = msg.sender  and it costs nearly half gas then regular function as you can see above gas consumption of two contracts.
**/