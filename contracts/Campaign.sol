// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.17 <0.9.0;

contract Campaign {

    address public manager;

    constructor() {
        manager = msg.sender;
    }
}