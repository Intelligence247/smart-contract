// Get Funds from user
// Withdraw Funds
// Set a Minimun Value in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract FundMe {
    // payable keywords makes the button fund red in the UI
    uint256 public myValue = 1;

    function fund() public payable {
        // Allow Users to send $
        // Have a minimum $ Sent
        // 1. How do we send ETH to this contract ?
        myValue = myValue + 2;
        require(msg.value > 1e18, "Didn't Send enough ETH"); // 1218 = 1 ETH = 1000000000000000000 wei = 1 * 10 ** 18 wei (With this people are forced to send at least 1 ETH)

        // What is a Revert?
        // Undo any actiions that have been done, and send the remaining gas back
    }

    // function withdraw() public {}
}
