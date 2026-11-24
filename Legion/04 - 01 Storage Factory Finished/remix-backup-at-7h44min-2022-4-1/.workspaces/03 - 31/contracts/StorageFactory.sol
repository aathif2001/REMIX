//SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

// here we import the 'SimpleStorage.sol' file and the create an array of 'SimpleStorag()' contract on 'SimpleStorage.sol'.
// then we grab a contract from the Array and then we deal with the functions in that contract

import './SimpleStorage.sol';

// just by adding 'is SimpleStorag' down. we can add everything on the 'SimpleStorag' contract without copying and pasting. remove 'is SimpleStorage' To view Storage Factory code alone.
contract StorageFactory is SimpleStorag{

//creating array  
    SimpleStorag[] public SimpleStorageArray;

// function to create new contract and add it to array, here each everytime we press the function a new 'SimpleStorag' contract is created    
    function createsimplestorage() public {
        SimpleStorag mwsimplestorage = new SimpleStorag();
        SimpleStorageArray.push(SimpleStorag(mwsimplestorage));
    }

// here we chose a 'SimpleStorag' contract from the array and we pass a Assign a number for the 'favouritenumber' state variable in it
    function sfStore(uint256 simplestorageindex, uint256 assignnumber) public {
        SimpleStorag mwsimplestorage1 = SimpleStorag(address(SimpleStorageArray[simplestorageindex]));
        mwsimplestorage1.store(assignnumber);
    }

// here we chose a 'SimpleStorag' contract from the array and then we pass the retrieve function to return the 'favouritenumber' in it 
    function sfGet(uint256 simplestorageindex) public view returns(uint256) {
        SimpleStorag mwsimplestorage2 = SimpleStorag(address(SimpleStorageArray[simplestorageindex]));
        return mwsimplestorage2.retrieve();
    }


}