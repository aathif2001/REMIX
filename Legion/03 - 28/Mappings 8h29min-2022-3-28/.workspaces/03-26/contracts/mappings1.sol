// SPDX-License-Identifier: MIT

pragma solidity >= 0.6.0 < 0.9.0;

contract SimpleStorage{

    struct Credit_Card{
        string Name;
        uint256 Number;
    }

    Credit_Card[] public Show_Me;
    mapping( string => uint256 ) public Show_Me_number; 

    function Add_New_Card(string memory _Name, uint256 _Number) public {

        Show_Me.push(Credit_Card( _Name, _Number ));
        Show_Me_number[_Name] = _Number;
        
    }
}