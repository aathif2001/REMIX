// SPDX-License-Identifier: MIT
pragma solidity >= 0.6.0 < 0.9.0;

contract BasicStorage{

    struct CreditCards{
        string Name;
        uint256 Card_Number;
    }

    CreditCards[] public Search_Card;

    mapping(string => uint256) public Search_By_Name;

    function Add_New_Card(string memory _Name, uint256 _Card_Number) public {
            Search_Card.push(CreditCards(_Name, _Card_Number));
            Search_By_Name[_Name] = _Card_Number;
    }
}