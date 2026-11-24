// SPDX-License-Identifier: MIT

pragma solidity >= 0.6.6 < 0.9.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe{

    mapping(address => uint256) public AddressToAmountFunded;

    function fund() public payable {
        AddressToAmountFunded[msg.sender] += msg.value;
    }

    function GetVersion() public view returns(uint256){
        return AggregatorV3Interface(0x9326BFA02ADD2366b30bacB125260Af641031331).version();
    }

    function getPrice() public view returns(uint256) {
        AggregatorV3Interface PriceFeed = AggregatorV3Interface(0x9326BFA02ADD2366b30bacB125260Af641031331);
       (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    ) = PriceFeed.latestRoundData();
    return uint256(answer);
    }
}