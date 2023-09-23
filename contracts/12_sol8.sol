// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

//struct 
contract Bai8{
    player[] players;
    mapping (address => player) ListOfPlayers;
    struct player{
        uint _id;
        address _address;
        string Name;
    }
    
    function foo() external  {
        player memory player1 = player(1,msg.sender,"Cuong");
        player memory player2 = player(2,msg.sender,"Quynh");

        player1.Name;
        player1.Name = "Haf";
        delete player2;

        players.push(player1);
        // players.push({_id: 1, _address: msg.sender, Name: "Myname"});

        // ListOfPlayers[msg.sender] = player1({_id: 1, _address: msg.sender, Name: "Myname"});
    }
}