// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
//Giao tiep giua cac smart contract

// cần điạ chỉ smart contract muốn giao tiêp và interface hoặc suocre code smart contract muốn giao tiêp

interface Ibai12 {
    function foo() external ;
    function bar() external ;
}
contract Bai12 {
    uint public a = 10;

    function foo() external  {
        a = 5;
    }
    function bar() external  {
       
    }
}

contract Bai12_1{
    address AHello = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    function setAHello(address _aHello) external  {
        AHello = _aHello;
    }
    function  CallFoo() external  {
        Ibai12 h = Ibai12(AHello);
        h.foo();
    }
}
