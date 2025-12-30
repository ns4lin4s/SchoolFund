// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SchoolFund {
    
    address public treasurer;
    uint256 public totalFund;

    // Mapping to track how much each parent has contributed
    mapping(address => uint256) public contributions;

    constructor() {
        //the deployer becomes the treasurer
        treasurer = msg.sender;
    }

    // Allows parents to pay their monthly fee
    function payFee() public payable {
        require(msg.value > 0, "Fee must be greater than 0");
        
        contributions[msg.sender] += msg.value;
        totalFund += msg.value;
    }
}