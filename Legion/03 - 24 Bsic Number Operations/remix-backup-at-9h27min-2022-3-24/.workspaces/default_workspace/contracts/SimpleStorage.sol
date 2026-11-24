/** pragma solidity 0.6.0; */
/* the above code can be used to compile with a specific version */

/** pragma solidity ^0.6.0 */
/** the above code can be used to use similar versions of the specific release */

/** 'pragma solidity >= 0.6.0 < 0.9.0' */
/** the above code can be used to compile with any version between 0.6.0 and 0.9.0 */

pragma solidity ^0.6.0;

// Since i am going to store just numbers in the contract i am gonna use, i will comment the following contact to demonstration purposes and write a new comment 
// the points marked with hash tags are not codes

/*

contract SimpleStorage{

    uint256 favouriteNumber = 5;

    # the above number can be any number 
    # if the favouriteNumber is kept as blank it will automatically assign zero 

    bool favouriteBool = true;
    # boolean can be true or false

    string favouriteString = 'Aathif';
    # String can be anything 

    int256 favouriteInt = -5;

    address favouriteAddress = 0xE0F411378927c7015f3bD4573cccd7D681B2D7E8;

    bytes32 favouriteByte = 'cat';
    # for bytes values any value from 1 to 32 can be assigned. can't assign more than 32 #

}

*/

contract SimpleStorage{

    // this will get initialized to zero
    // uint256 favouriteNumber;
    int256 public Multiplied_Answer;
    int256 public Added_Answer;
    int256 public Difference_Answer;
    int256 num1 = 0;
    int256 num2 = 0;

  //  function store(uint256 _favouriteNumber) public {

 //       favouriteNumber = _favouriteNumber;

   // }

    function Number_1(int256 numbr1) public {
        num1 = numbr1;
   } 

    
    function Number_2(int256 numbr2) public {
        num2 = numbr2;
        //Product = num1*num2;
    }

    function Multiply() public {
        Multiplied_Answer = num1*num2;
    }

    function Add() public {
        Added_Answer = num1 + num2;
    }
    
    function Difference() public {
        Difference_Answer = num1 - num2;
    }

}



