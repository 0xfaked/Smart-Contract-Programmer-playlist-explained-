// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract AbiDecode{
    struct MyStruct{
        string name;
        uint[2] nums;
    }// created a struct that takes string as an input and fixed sized uint array as nums.
    function encode(
        uint x,
        address addr,
        uint[] calldata arr,
        MyStruct calldata myStruct
    )//this takes input of uint, address, uint array, & MyStruct
    external  pure returns(bytes memory){// it is a pure function , and will return data in bytes
        return  abi.encode(x, addr, arr, myStruct);// it says return the data with encoding of all of the input that are specified in this brackets.
    }

    function decode(bytes calldata _data) external pure returns(
        uint x,
        address addr,
        uint[] memory arr,
        MyStruct memory myStruct
    )// it will return all this vars and data structures.
    {
        (x, addr, arr, myStruct) = abi.decode(_data, (uint , address, uint[], MyStruct));
    }// first it will decode all the data with abi.decode, we have given the input of encoded data to this decode function 
    //then next we says decode the data of above vars , and far above we say attach the value to uint to x , address to addr, and so on 
}