// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "./13_bai9.sol";

import "./14_bai10.sol";

//Tinh Thua huong
contract Bai11 is Bai9, Bai10 {

    // constructor(uint data) public Bai9(data) {
    //     //
    // }
    uint b = 6;
    function bar() public  {
        b = 10;
    }
}
