// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract TodoList{
    struct Todo{
        string text;
        bool completed;
    }// created a struct named "Todo" , with a string and boolean.
    Todo[] public todos;// created an array of struct of Todo and named it todos.

    function create(string calldata  _text) external {
        todos.push(Todo({text: _text ,completed: false}));
    }// created a function that takes string as an input , in next line we add input "_text" and Bool as a struct, it means that add input _text and bool false to an array.
    
    function updateText(uint _index, string calldata _text) external {
        todos[_index].text = _text;

    }//created a function that takes uint _index and string _text as an input, with the help of _index it takes rows in data from array, & in second line updates the text in array from inputed "_text" to struct text.
// If we have to save gas while updating many values in struct use "Todo storage todo = todos[index]" it will save the reference of the struct to the var name todo
    function get(uint _index) external view returns(string memory, bool){
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }// in this get function  takes input of _index , saves array & index of it in todo var. & with the help of index print the todo.text and todo.completed.

    function ToggleCompleted(uint _index) external {
        todos[_index].completed = !todos[_index].completed;
    }//It will change the current bool type to its opposite, takes _index as input, 
    // In second line we are saying that in todos array 0 index. completed hai if we clicked this togglecomplete function then whatever it state it is in, its not todos.completed. means its opposite.
    

}