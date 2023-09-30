//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract functionoutputs{
    function returnMany() public pure returns(uint, bool){
        return (1, true);
    }//if we have to return certain vars then we have add returns() functions and specify which var we want toget output
    function named() public pure returns (uint x, bool b){
        return(1, true);
    }
    function assigned() public pure returns (uint x, book b){
        x = 1;
        b = true;
    }//here we have assigned input x to 1 and b to true.// it will save little bit of gas.
}