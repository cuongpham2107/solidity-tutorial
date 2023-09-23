// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
//-variable visibility
//private // chỉ được gọi từ bên trong, bên ngoài không được gọi
//internal // bên ngoài không được gọi, chỉ được gọi thông qua smart contract khác
//external // chỉ được gọi từ bên ngoài, bên trong không được gọi
//public // gọi được hết

contract Bai5{

    
   uint value;
    //uint public value; -> không cần viết hàm get ở dưới solidity tự sinh ra hàm àny

   function getValue() external view returns(uint){
       return value;
   }
   function setValue(uint _value) external {
       value = _value;
   }
}