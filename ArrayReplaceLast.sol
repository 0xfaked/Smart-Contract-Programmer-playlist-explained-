//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ArrayReplaceLast{
    uint[] public arr; //created an uint array

    function remove(uint _index) public { //taken an uint input as _index
        arr[_index]  = arr[arr.length - 1] ; // input is equal to array length -1
        arr.pop(); // remove the last element from arr, array.
    }
    function test()  external{
        arr = [1,2,3,4];
        remove(1);

        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);// asserted values that we wanted on this places.

    }
}