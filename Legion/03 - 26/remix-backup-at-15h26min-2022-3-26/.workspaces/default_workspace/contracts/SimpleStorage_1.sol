pragma solidity >=0.6.0 < 0.9.0;

contract SimpleStorage{

// These Variable down are universal variables which can be used in middle of any function

    int256 num_1;
    int256 num_2;




/** -------------- Form of function in solidity----------

    function function_name(<param_type> <param_name>)
 <visibility> <state mutability> [returns(<return_type>)]{ ... } */


    function Number_1(int256 num1) public {
        num_1 = num1;
    }

    function Number_2(int256 num2) public {
        num_2 = num2;
    }

    function Add() public view returns(int256 Added_Answer) {
        Added_Answer = num_1 + num_2;
        return Added_Answer;
    }

    function Multiply() public view returns(int256 Multiplied_Answer){
        Multiplied_Answer = num_1*num_2;
        return Multiplied_Answer;
    }

    function Difference() public view returns(int256 Difference_answer){
        Difference_answer = num_1 - num_2;
        return Difference_answer;  
    }


}