//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract IterableMapping{
    mapping(address => uint) public balances;
    mapping(address => bool) public inserted;

    address[] public keys;// created an address array

    function set(address _key, uint _val) external{
        balances[_key] = _val; //inserted balances mapping with _key = _val.

        if (!inserted[_key]) {
            inserted[_key] = true;
            keys.push(_key);
        
        }// added the logic in if statement is  , not inserted _key should be assigned as true , add this new address of input Key to array _key.
    } 

    function getSize() external view returns (uint){
        return keys.length; // .length is reffered as uint data type.
    }// created a function which gives the length of keys array.
    
    function first() external view returns(uint){
        return balances[keys[0]]; // get first value by address with the help of balances mapping
    }
    function last() external view returns(uint) {
        return balances[keys[keys.length - 1]]; // this function takes keys array and with takes last address inserted by "keys.length -1" and gives us the value of it.
    }

    function get(uint _i) external view returns(uint){
        return balances[keys[_i]];
    } // In this function we taken an uint input as "_i" then we says that if user input 0 number to this funciton, return the first address and its value from the keys array.
}
// This Contract Works man :) .