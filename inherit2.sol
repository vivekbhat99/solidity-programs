pragma solidity 0.8.6;

contract A {
    //parent contract
    
    string public name;
    constructor (string memory _name) public{
        name = _name;
    }
}


contract B is A{
    
    // constructor() A("This is Contract B") public {
        
    // }
    
    constructor(string memory _name) A(_name)public {
        //pass string(name) when deployed. parameter is passed to contract B, it is passed to constructor of A and it sets name = _name 
    }
}
