//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Struct{

    struct Car{

    string model;
    uint year;
    address owner;
    }// Created an struct with string,uint , address.
    Car public car;// created an car var as an struct of car.
    Car[] public cars;// created an array of struct car[] 
    mapping(address => Car[]) public carsByOwner; //mapped address to car array 

    function examples() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender); // store this data in memory of Car struct and added the value of it. 
        Car memory lambo = Car("Lamborghini", 2000, msg.sender);
        Car memory tesla; // created an empty struct it will display the defaul values of struct
        tesla.model = "Tesla";
        tesla.year = 2010;
        tesla.owner = msg.sender;// above 3 line added the data of tesla using Car struct

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);// push means add this data in car[] array

        cars.push(Car("Ferrari", 2020, msg.sender));

        Car storage _car = cars[0];// storage means we can change this data on blockchain like persistent data ,and memory is erased after that function or transaction ends.
        _car.year = 1990;// it will change the car year of 0 address that have stored in an car array
        delete _car.owner;// it will delete an owner section of 0 address

        delete cars[1];// it will delete 2nd address all data means lambo data will be deleted
        
    }

}

    

// we uses struct for maintaining complex data structure. for e.g
/**
struct person{
    string name,
    uint age
    }
    you can also add data to it, person nayan = new person(nayan, 17)
    you can call it as return (person.name)

**/