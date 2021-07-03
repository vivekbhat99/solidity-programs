pragma solidity 0.8.6;


// basic land registration details as per Indian paper document (some doc not added and differs state wise)


contrct Land {
    
    struct LandInfo {
        address payable landOwner;
        string storage state;
        string storage district;
        uint areaInCents;
        uint pincode;
        uint serveyNumber;
        uint currenValue;
        address personRequested;
        bool availability;
        string storage ec; //encumbranceCertificate
        string storage rtc;
        Status status; 
    }
    
    constructor() public {
        owner = msg.sender;
    }
    
    enum Status {default, pending, reject, approved}
        
    address owner;
    mapping(uint => LandInfo) landIdentifier;
    mapping(string => address) admin; //string contains city/village name and admin of corresponding 
    
    modifier onlyOwner {
        require (msg.sender == owner);
        _;
    }
    
    
    
    
    
}