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

// the above and the bellow codes are the same
     People public person2 = People(
        2,
        'Aathif',
        21
    );

// 2nd Struct  Example

    struct People1{
        uint256 awesomenumber;
        string names;
    }

// struct defines the type. An array is like a storage thing for same type of data
// the below codes says that 'person1' is an array of type 'People1' Struct
    People1[] public person1;

// the below code is function to push data in to the array
    function Addpeople(string memory _name, uint256 _awesomenumber) public {
        person1.push(People1({awesomenumber: _awesomenumber, names: _name}));
    }

}