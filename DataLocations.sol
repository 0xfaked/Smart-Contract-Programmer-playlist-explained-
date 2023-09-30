//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


//Data locations :- storage, memory, calldata
contract DataLocations{
    struct MyStruct{
        uint foo;
        string text;
    }
    
    mapping(address => MyStruct) public mystruct;

    function examples(uint [] memory y, string calldata s) external returns(uint[] memory){
        mystruct[msg.sender] = MyStruct({foo: 123, text: "bar"});

        MyStruct storage mystruct = MyStructs[msg.sender];
        mystruct.text = "foo";

        MyStruct memory readonly = mystruct[msg.sender];
        readonly.foo = 456;

        _internal(y);

        uint[] memory memArr = new uint[](3);
        memArr[0] = 234;
        return memArr;



    }
    function _internal(uint[] calldata y) private{
        uint x = y[0];
    }
}
/**
Storage is the permanent storage for a contract. It is used to store data that needs to be persisted across transactions. Storage is also used to store the contract's code.
Memory is a temporary storage for a contract. It is used to store data that is only needed for the current transaction. Memory is cleared after each transaction.
Calldata is the data that is passed to a contract when it is called. Calldata is stored in memory and can be accessed by the contract.
Here is a table that summarizes the differences between storage, memory, and calldata:

Feature	Storage	Memory	Calldata
Location	Permanent	Temporary	Temporary
Persistence	Persists across transactions	Cleared after each transaction	Cleared after each transaction
Access	Can be accessed by any function in the contract	Can only be accessed by the function that was called	Can only be accessed by the function that was called
Here are some examples of how storage, memory, and calldata can be used in Solidity:

Storing a contract's code in storage: The code for a contract is stored in storage. This means that the code is always available to the contract, even after the contract has been created.
Storing data that needs to be persisted across transactions in storage: If you want to store data that needs to be persisted across transactions, you should store it in storage. For example, you might store the contract's balance in storage.
Storing data that is only needed for the current transaction in memory: If you only need to store data for the current transaction, you should store it in memory. For example, you might store the results of a calculation in memory.
Accessing data that is passed to a contract in calldata: If you need to access data that is passed to a contract, you can access it through calldata. For example, if you are creating a contract that takes an input, you can access the input through calldata.
I hope this explanation is helpful. Let me know if you have any other questions.

**/