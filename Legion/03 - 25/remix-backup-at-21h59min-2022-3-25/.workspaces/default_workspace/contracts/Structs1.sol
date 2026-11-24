pragma solidity >= 0.6.0 < 0.9.0;

contract StructsRev1{

    struct CreditCard{
        string Card_Name;
        uint256 Card_Number;
    }

    CreditCard public Stored = CreditCard({
        Card_Name : 'Aathif',
        Card_Number : 200118901743
    });

}

contract StructsRev2{

    struct CreditCard{
        string Card_Name;
        uint256 Card_Number;
    }

    CreditCard[] public Type_The_Index;

// adding strings to an array memomy keyword must be used
    function AddCardDetails(string memory _Card_Name, uint256 _Card_Number) public {
        Type_The_Index.push(CreditCard({
            Card_Name : _Card_Name,
            Card_Number : _Card_Number
        }));
    }


}