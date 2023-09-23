// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
contract Bai2{
    //fixed-size types
    bool isStatus; //true, false
    uint a; //1,2,3
    address sender; //)xf9dw.....312eqwe
    bytes32 data;

    //variable-size types
    string name;
    bytes data1;
    uint[] amounts; //[1,2,3,4,5,3] 
    mapping (address => bool)whitelist; // 0x3213...3312312 => true

    //user define
    struct User{
        uint id;
        string name;
        bool isStatus;
    }
    enum Color {
        red,
        blue,
        greeen
    }
    //built in "Biến có sãn"
   // msg.sender; "Địa chỉ của người gọi hàm đó"
   // msg.value; "Giá trị của hàm gọi đó"
}