pragma solidity 0.8.6;

contract A {
    //parent contract
    
    function getName() public pure returns (string memory){
        return "A";
    }
}

contract B is A{
    function getName() public pure returns (string memory){
        return "B";  //overrides A - note : function should be exactly same 
    }
}
