// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Array{
    uint[] public nums = [1,2,3];//This is a fixed sized array. it means it can have as many numbers in it. and it is uint array.
    uint[3] public numsFixed = [4,5,6];// this is a fixed size array of 3, it means it can only have 3 numbers in it.

    function examples() external {
        nums.push(4);// it will add 4 number in the end of nums array.
        uint x = nums[1];// assigned  an array as x to 2 place holder.
        nums[2] = 777;//remember in solidity counting starts from zero.
        delete nums[1];// delete statement in array will set the value of deleted number to zero. where as if you want to delete and shrink the array you can use something like nums.pop().
        nums.pop();// it will remove the last number in an array
        uint len = nums.length;// it will give the length of an nums array.

        //create array in memory 
        uint[] memory a = new uint[](5);// we can only create an memory array of fixed size. pop and push will not work here
        a[1] = 123;

    }
    function returnarray() external view returns (uint[] memory){
        return nums;
    }// the bigger the array it will use more gas.

}