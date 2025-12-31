// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SchoolFund {

    struct Expense {
        uint256 amount;
        string description;
        address recipient;
    }
    
    address public treasurer;
    uint256 public totalFund;

    Expense[] public expenseHistory;

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

    function executeExpense(uint256 _amount, string memory _description, address payable _recipient) public {
        require(msg.sender == treasurer, "Only the treasurer can execute expenses");
        require(_amount <= address(this).balance, "Insufficient funds in treasury");

        // Transfer funds to the vendor/provider
        _recipient.transfer(_amount);

        // Record the expense for public auditing
        expenseHistory.push(Expense({
            amount: _amount,
            description: _description,
            recipient: _recipient
        }));
        
        totalFund -= _amount;
    }
}