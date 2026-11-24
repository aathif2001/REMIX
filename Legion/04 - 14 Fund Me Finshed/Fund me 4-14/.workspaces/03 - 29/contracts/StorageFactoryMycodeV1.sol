//SPDX-License-Identifier: MIT
pragma solidity >= 0.6.0 < 0.9.0;

// importing the file in the same directory
import './SimpleStorage.sol';

contract StorageFactory{

// address state variable
    address revin;

     // the array down is connecting with the contract on the simplestorage.sol also used to add newly created contracts of type 'SimpleStorag' 
    SimpleStorag[] public simpleStorageArray;

    // the below function is used to create new contracts of type 'SimpleStorag' 
    function createSimpleStorageContract() public {
        // the below code says, 'nsimpleStorage' is in the Type of SimpleStorag and also it is the new SimpleStorag Contract here
        SimpleStorag nsimpleStorage = new SimpleStorag();
        // here we push the nsimple storage to the Array
        simpleStorageArray.push(SimpleStorag(nsimpleStorage));
    }


    function  Assign_Address_To_Revin(uint256 indexing) public {
        revin = address(simpleStorageArray[indexing]);
    }

    function Retrieve_Revin() public view returns(address _revin) {
        _revin = revin;
        return _revin;
    }

}
