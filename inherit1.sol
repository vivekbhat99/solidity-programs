pragma solidity 0.8.6;

contract A {
    //parent contract
    
    function getName() public pure returns (string memory){
        return "A";
    }
}

contract B is A{
    function getName(uint i) public pure returns (string memory){
        return "B";  //does not override A - creates two getName one returns A and other returns B 
    }
}
