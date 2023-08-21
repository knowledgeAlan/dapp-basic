// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.18;


contract StringBytes{

    bytes[3] fixedByteArray;


    bytes3 bytes3Array;


    bytes[] dynamicByteArray;

    bytes bytesArray;


    string string1 = "testing";


    function conversionTest() public  pure returns(string memory){
        bytes memory string2 = "Udacity";
        string memory converted = string(string2);
        return  converted;

    }



    function getElementAt(uint index) public  view returns(bytes1){

        bytes memory bytesData = bytes(string1);

        bytes1 element = bytesData[index];
        return element;
    }




    function  testing() internal  pure{
        bytes memory memoryBytes;

        memoryBytes = new bytes(20);
        memoryBytes[0] = "a";

    }


    function stringExamples() public  pure  returns(string memory){
        string memory string3 = "abcde";
        return string3;
    }
}