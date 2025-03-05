// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

error Raffle_NotEnoughEthSent();

/**
 * @title A sample Raffle Contract
 * @author Cyfrin / wr1159
 * @notice This contract is for creating a sample raffle
 * @dev It implements Chainlink VRFv2.5 and Chainlink Automation
 */
contract Raffle {
    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() external payable {
        // require(msg.value >= i_entranceFee, "Not enough ETH sent");
        if (msg.value < i_entranceFee) revert Raffle_NotEnoughEthSent();
    }

    function pickWinner() public {}

    /** Getter Function */

    function getEntranceFee() external view returns (uint256) {
        return i_entranceFee;
    }
}
