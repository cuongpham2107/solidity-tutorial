// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;


contract Soxo{
    Customer[] public customers;
    struct Customer{
        string _ID;
        address _ADDRESS;
    }
    event SM_send_data(address _address, string _id);
    //Đăng kí thông tin 
    function Register(string memory _id) public {
        Customer memory customer = Customer(_id, msg.sender);
        customers.push(customer);
        emit SM_send_data(msg.sender, _id);
    }
}