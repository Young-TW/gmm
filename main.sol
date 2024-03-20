// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.19;
pragma abicoder v2;

contract Main {
    address public receiver_me = 0x648CFe54456625cBedE67b2d5fCd0D7C1E26c164; // my address

    receive() external payable {}

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function send(address payable receiver, uint256 _amount) public {
        if (receiver != receiver_me) {
            revert("You should send to me only!");
        }

        receiver.transfer(_amount);
    }
}
