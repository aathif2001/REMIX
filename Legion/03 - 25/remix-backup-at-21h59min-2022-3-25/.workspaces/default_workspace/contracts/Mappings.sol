// SPDX-License-Identifier: MIT

pragma solidity >= 0.6.0 < 0.9.0;

contract Mappings{

    struct PhoneBook{
        string Name;
        uint256 Contactno;
    }

    PhoneBook[] public Search;

    mapping(string => uint256) public NameToNumber;

    function AddContact(string memory _Name, uint256 _Contactno) public {
        Search.push(PhoneBook(
            _Name, _Contactno
        ));

        NameToNumber[_Name] = _Contactno;
    }

}