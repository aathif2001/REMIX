// SPDX-License-Identifier: MIT

pragma solidity >= 0.6.0 < 0.9.0;

contract Mappings{

    struct Credit_Card{
        string Name;
        uint256 Card_Number;
        uint256 pin;
    }

    Credit_Card[] public Search_No;
    mapping( string => uint256 ) public Find_Number;

    function Add_Card( string memory _Name, uint256 _Card_Number, uint256 _pin ) public {
        Search_No.push(Credit_Card(_Name, _Card_Number, _pin));
        Find_Number[_Name] = _Card_Number;
    }

}