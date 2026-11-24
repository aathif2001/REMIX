// SPDX-License-Identifier: MIT

/** In this codes i have created a new contract called StorageFactory  which creates an array of the contract 'SimpleStorag' in the file 'SimpleStorage.sol'
then we take the adress of those contracts and we define a name to the address that we need, at last by giving the name we retrieve the address  */

pragma solidity >= 0.6.0 < 0.9.0;

// importing the file in the same directory
import './SimpleStorage.sol';

contract StorageFactory{


// used to do address name to address mapping
    struct AddressAndName{
        address ContractAddress;
        string DefContractName;
    }

// address name to address mapping
    mapping(string => address) public Defined_Name_To_Address;

// the array down is connecting with the contract on the simplestorage.sol also used to add newly created contracts of type 'SimpleStorag' 
    SimpleStorag[] public simpleStorageArray;

//this is the array where we give names to the addresses
    AddressAndName[] public AddressAndNameArray;

// the below function is used to create new contracts of type 'SimpleStorag' 
    function createSimpleStorageContract() public {
        // the below code says, 'nsimpleStorage' is in the Type of SimpleStorag and also it is the new SimpleStorag Contract here
        SimpleStorag nsimpleStorage = new SimpleStorag();
        // here we push the nsimple storage to the Array
        simpleStorageArray.push(SimpleStorag(nsimpleStorage));
    }

// the following function is used to add informations of the addresses and mapping
    function AddInformation(string memory _DefContractName, uint256 indexing) public {
        // pushing to name and address to the array. Here the type of data we push is in the form of the struct 'AddressAndName', in the struct - ContractAddress is added using the indexing of the array simpleStorageArray
        AddressAndNameArray.push(AddressAndName({
            ContractAddress : address(simpleStorageArray[indexing]),
            DefContractName : _DefContractName
        }));
        // The Below code helps to find the address when name is given
        Defined_Name_To_Address[string(_DefContractName)] = address(simpleStorageArray[indexing]); 
    }

}