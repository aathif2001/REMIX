// SPDX-License-Identifier: MIT

pragma solidity >= 0.6.0;

contract SimpleStorage{

// the struct that is wrtitten below is a like type of data which means now the 'Credit_card' is also a term like 'string' which can include strings and uint256 

    struct Credit_Card{
        string Name;
        uint256 Number;
    }


//the code written with a square brackets is called as an array.
// Array is like a list of data set. which means, the name of the list down is Show_Me. also this data set doesn't have a limit. which is know as a dynamic array.

    Credit_Card[] public Show_Me;

// below code is an exaple for fixed size array, for this there is a error while compling refer fuction (remove comments in the last function and compile)

    string[10] public Red_Boxes;

// i wanted to make the below code as an fixed size array but idk, when i make this as a fixed size array it shows an error. 
    string[] public ketters;

    mapping( string => uint256 ) public Show_Me_number; 

    function Add_New_Card(string memory _Name, uint256 _Number) public {

        Show_Me.push(Credit_Card( _Name, _Number ));
        Show_Me_number[_Name] = _Number;
    }

    function Addleters(string memory _leters) public {
        ketters.push(string(_leters));
    }
/**
    function Redboxes(string memory _box) public {
        Red_Boxes.push(string(_box));
    }
*/

}