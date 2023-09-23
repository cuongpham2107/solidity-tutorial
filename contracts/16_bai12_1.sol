// SPDX-License-Identifier: None

pragma solidity ^0.8.4;
import "./16_Bai12.sol";

contract Bai12_1{
    address AHello = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    function setAHello(address _aHello) external  {
        AHello = _aHello;
    }
    function  CallFoo() external  {
        Bai12 h = Bai12(AHello);
        h.foo();
    }
}