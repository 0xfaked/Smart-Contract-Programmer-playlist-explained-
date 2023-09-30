//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ForandWhileLoops{
    
    function loops()external pure{
        
        for(uint i = 0; i < 10; i++){
            if (i ==3){
                continue;
            }
            
        
        if (i == 5) {
            break;
        }
        }// here we've created a for loop says that i is zero until i should be smaller than 0 i++ means add till this condition is true
        //and we also added some conditions like if i equals to 3 then continue & if i reaches to 5 break means stop the addition.

        uint j;
        while (j < 10){
            j++;
        }// while loop is very simple if add the value of j until it is smaller than 10;
        }

        function sum(uint _n) external pure returns (uint){
            uint s;
            for(uint i = 1; i <= _n; i ++){
                s += 1;
            }
        }
}