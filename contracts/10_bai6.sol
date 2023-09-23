// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
contract Bai6{
    //storage array ->lưu trên blocktrain tốn gas
    //memory array ->lưu trên bộ nhớ không tốn gas, chỉ khai báo bên trong function
    //array as parameter

    uint[] myArray; // CRUD
    //truy cập phần tử mảng thông qua index
    //storage array
    function TEST() external  {
        myArray.push(2); //[2]
        myArray.push(5); // add [2,5]
        myArray[1]; // get ->5
        myArray[0] = 9; // update -> [9,5]
        delete myArray[0]; // delete -> [0,5]

        for (uint i = 0; i< myArray.length; i++) 
        {
            myArray[i];
        }
    } 
    //memory array
    function bar() external  {
        uint[] memory newArray = new uint[](10);// khai báo memory array thì phải xác định độ dài
        newArray[0] = 4; //add
        newArray[1] = 5;//add;

        myArray[1]; // get 
        myArray[0] = 9; // update 
        delete myArray[0]; // delete 
    }

    //sử dụng array như 1 parameter trong function
    //sử dụng array là parameter cho 1 hàm external thì phải có từ khoá "calldata"
    //sử dụng array là parameter cho 1 hàm public, internal thì phải có từ khoá "memory"
    function foo(uint[] calldata myArgs) external  {
        
    }
}