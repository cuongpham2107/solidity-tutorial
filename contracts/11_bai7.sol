// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

//Mapping
contract Bai7{
   //declare a mapping

   mapping (address => uint) balances;


    //nested mappings
    mapping (address => mapping (address => bool)) approved; //address1 như là admin => address2 như là customer giá trị bool có được sử dựng tiền của adđress1 hay ko
    function foo() external  {
       //add & update

       balances[msg.sender] = 100;
       balances[msg.sender] = 200;

       //get
       balances[msg.sender];

       //delete
       delete balances[msg.sender];

       //default vuale;

        //balances[KeyNotExist]  => 0 //khi truy cập vào giá trị không có thì sẽ trả về giá trị mặc định uint = 0, bool = false

        //nested mappings
        //approved[msg.sender][spender]; // => true hay false
   }
}