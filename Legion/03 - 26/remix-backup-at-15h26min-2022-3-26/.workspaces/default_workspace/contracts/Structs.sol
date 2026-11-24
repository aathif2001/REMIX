pragma solidity >= 0.6.0 < 0.9.0;



contract SimpleStorage{

// 1st Struct Example
    struct People{
        uint256 Favouritenumber ;
        string name;
        uint256 Age;
    }

    People public person = People({
        Favouritenumber: 2,
        name: 'Aathif',
        Age: 21
    });

// 2nd Struct  Example

    struct People1{
        uint256 awesomenumber;
        string names;
    }

    People1[] public person1;

    function Addpeople(string memory _name, uint256 _awesomenumber) public {
        person1.push(People1({awesomenumber: _awesomenumber, names: _name}));
    }

}