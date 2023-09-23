// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
contract Bai3{

    //constractor là hàm đặc biệt khi deploy chỉ chạy 1 lần duy nhất
   uint value;

//    constructor(uint _a) public  {
//        value = _a;
//    }
   

   //returns: là kiểu dữ liệu trả về
   //return: là trả về dữ liệu
   function getValue() external view returns(uint){
       return value;
   }
   function setValue(uint _value) external {
       value = _value;
   }
}