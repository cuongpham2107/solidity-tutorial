// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

//event

//gửi/nhận
contract Bai9{
    constructor() {
        
    }
    //event
    event deposit(address from, uint amount);//Định nghĩa event
    event deposit1(address indexed  from, uint amount); //indexed lọc theo địa chỉ của người gửi
    function foo(uint amount) external  {
        //transfer token
        emit deposit(msg.sender, amount); //bắn event ra ngoài
    }



    //gửi/nhận

    function sendEther(address payable to, uint amount) external  {
        to.transfer(amount);
    }

    function BuySth() external  payable  {//nhan tien tu khach 
        msg.value;
        address(this).balance;
    }
    receive() external payable { // Thuc hien hanh dong khi khach hang chuyen tien

    }
}