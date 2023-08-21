// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.18;

contract StructsContract{


    struct Family {
        bytes32 lastName;
        uint8 houseNo;
        uint16 age;
    }

    Family[] myFamily;



    function getName(bytes32 name) public  view  returns (bytes32,uint8,uint16){
        for(uint8 i = 0; i < myFamily.length; i++){
            if(name == myFamily[i].lastName){
                return (myFamily[i].lastName,uint8(myFamily[i].houseNo),myFamily[i].age);
            }
        }
        return ("",0,0);
    }

    function addName(bytes32 _lastName,uint8 _value,uint16 _age) public returns  (bool){
        Family memory newFamily;

        newFamily.lastName = _lastName;
        newFamily.houseNo = _value;
        newFamily.age = _age;
        myFamily.push(newFamily);
        return true;
    }

}