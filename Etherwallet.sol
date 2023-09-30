// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract EtherWallet {
    address payable  public owner; // created a public address named owner, it is payable address.

    constructor(){
        owner = payable(msg.sender);
    }// created a constructor , where we assigned owner as msg.sender which is also payable address.

    receive() external payable {}// created a receive function . and its impossible that receive function don't have payable function.

    function withdraw(uint _amount) external {
        require(msg.sender == owner, "caller is not owner");
        payable(msg.sender).transfer(_amount);
    } // created a withdraw function that takes _amount as an input 
    //added require statement  where we say msg.sender should be owner and if not throw an error "caller is not owner"
    // msg.sender..transfer  will transfer the ether, with the Input _ amount 
    
    function getBalance() external view returns(uint){
        return address(this).balance;
    }// with this function we can see how much ether is there in this contract 

}