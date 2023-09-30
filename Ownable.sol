//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Ownable{
    address public owner; // created an address var as owner.

    constructor() {
        owner = msg.sender;
    }// have assigned the owner to deployer of the contract.
    modifier onlyowner(){
        require(msg.sender == owner,"not owner");
        _;// this means run the remaining code from the function after modifier code is executed.
    }// created a modifier added require statement as only deployer of the contract should call this.

    function setOwner(address _newOwner) external onlyowner {
        require(_newOwner != address(0), "invalid address");
        owner = _newOwner;
    }//created a setOwner function to set the new owner address. added require func that newowner should not be 0 address and if it is than throw error. If all the conditions are met newowner should set .
    function onlyOwnerCanCallThisFunc() external onlyowner{

    }//test function
    function anyonecancallthisfunc() external {

    }//test function.
}