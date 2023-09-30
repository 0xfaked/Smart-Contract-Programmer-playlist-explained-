//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Enum{

    // This enum defines the possible statuses for an order.
    enum Status {
        None, 
        Pending, 
        Shipped,
        Completed,
        Rejected,
        Canceled 
    }

    // This variable stores the current status of the order.
    Status public status;

    // This struct defines the data for an order.
    struct order{
        address buyer;
        Status status;
    }

    // This array stores the orders.
    order[] public orders;

    // This function returns the current status of the order.
    function get() view external  returns (Status){
        return status;
    }

    // This function allows the user to change the status of the order.
    function set(Status _status) external {
        status = _status;   
    }

    // This function changes the status of the order to Shipped.
    function ship() external {
        status = Status.Shipped;
    }

    // This function deletes the order from the contract.
    function reset() external {
        delete status;
    }

}
