// SPDX-License-Identifier: MIT
pragma solidity >= 0.6.0 < 0.9.0;

contract Mappings{


// in this code there is conflict part
// throughout the code i am only using 1 mapping for both 2 functions
// arrays are of the same type of following struct 

// for DEMO, for 'AddContact' and 'AddContacts' input a similar string( A Letter of course ) then add different numbers for each
// then transact one of them and do the mapping. Then do the next Transact and do the mapping
// You will be able to See that mapping is showing the latest transaction with the input string

    struct PhoneBook{
        string Name;
        uint256 Contactno;
    }

    PhoneBook[] public Search;
    PhoneBook[] public Search2;
    
    mapping(string => uint256) public NameToNumber;

// this function add data to the array 'Search'
    function AddContact(string memory _Name, uint256 _Contactno) public {
        Search.push(PhoneBook(
            _Name, _Contactno
        ));

// the following code is used for mapping but it doesnt specify for which array the mapping is used 
// therefore if we update the arrays with the same 'String' with 'Different number' mapping will only show the latest update
       
        NameToNumber[_Name] = _Contactno;
    }

// this function add data to the array 'Search2'
    function AddContacts(string memory _Name, uint256 _Contactno) public {
        Search2.push(PhoneBook(
            _Name, _Contactno
        ));
        NameToNumber[_Name] = _Contactno;
    }

}

