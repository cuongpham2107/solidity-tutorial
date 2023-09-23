// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

//Error Handling
contract Bai10{
    //throw, assert, revert
    //require
    //modifier

    // uint public  a = 10;
    // function foo(uint Foo) public  CheckA(Foo) {
    //     a = 5;
       
    // }
    // function bar()public CheckA(10) CheckB(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4) {
    //     a = 8;
    // }
    // modifier CheckA(uint test)  {
    //     require(a == 8, "a need to be 8");
    //     ///
    //     ///
    //     _;
    // }
    modifier  CheckB(address _admin){
        ////
        ////
         require(msg.sender == Admin, "only admin can call this function");
        _;
    }

    //Vi du:
    uint public test = 10;
    address Admin = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    function TEST() public CheckB(Admin)  {
        test = 5;
    }

}
