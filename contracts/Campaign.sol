// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.17 <0.9.0;

contract Campaign {

    address public manager;
    uint public minimumContribution;
    address[] public approvers;

    constructor(uint minimum) {
        manager = msg.sender;
        minimumContribution = minimum;
    }

    function contribute() public payable {
        require(msg.value > minimumContribution);
        approvers.push(msg.sender);
    }
}