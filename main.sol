// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.19;
pragma abicoder v2;

// This contract is used to receive ethereum.
contract Main {
    address constant public receiver_bep20 = 0x648CFe54456625cBedE67b2d5fCd0D7C1E26c164;
    address constant public receiver_ethereum = 0x648CFe54456625cBedE67b2d5fCd0D7C1E26c164;


    // This function is used to receive ethereum.
    receive() external payable {}

    // This function is used to get the balance of the contract.
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    // This function is used to send ethereum to the specified address.
    function send(address payable receiver, uint256 _amount) public {
        receiver.transfer(_amount);
    }
}
