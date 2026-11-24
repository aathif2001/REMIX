pragma solidity >= 0.6.0 < 0.9.0;

contract StructRev{

    struct PhoneBook{
        string Name;
        uint256 Number;
    }

    PhoneBook[] public Select;

    function AddContacts(string memory _Name, uint256 _Number ) public {
        Select.push(PhoneBook(
            _Name,
            _Number
        ));
    }
    
    struct PhoneBook1{
         string Name;
        uint256 Number;
    }

    PhoneBook1 public Show = PhoneBook1({
        Name : 'Aathif',
        Number : 1
    });
}