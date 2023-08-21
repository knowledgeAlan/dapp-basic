// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.18;

contract TypesConversion{
    uint8 a = 255;
    uint ownerInitialBalance;


    function conversion() public view {
       
        // b = a;
        int b = int(int8(a));

       


    }
}