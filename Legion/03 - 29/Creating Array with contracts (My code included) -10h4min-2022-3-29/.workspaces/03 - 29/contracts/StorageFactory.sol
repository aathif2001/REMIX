// SPDX-License-Identifier: MIT

pragma solidity >= 0.6.0 < 0.9.0;

import './SimpleStorage.sol';

contract StorageFactory{

// the array down is connecting with the contract on the simplestorage.sol
    SimpleStorag[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorag nsimpleStorage = new SimpleStorag();
        simpleStorageArray.push(SimpleStorag(nsimpleStorage));
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {

   }
}