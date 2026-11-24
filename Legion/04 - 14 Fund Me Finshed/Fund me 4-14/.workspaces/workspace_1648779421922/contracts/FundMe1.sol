// SPDX-License-Identifier: MIT
pragma solidity >= 0.6.0 < 0.9.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe{
    
    // FundMe Contract is based on Rinkeby Test Network

    mapping(address => uint256) public AddressToAmountFunded;

    function fund() public payable {
        uint256 minimumAmount = 50 * (10**18);
        require( GWEItoNWUnitConvertion(msg.value) >= minimumAmount); 
        AddressToAmountFunded[msg.sender] += msg.value;
    }

    function GetLatestEthPrice() public view returns(uint256) {
        AggregatorV3Interface AddressInNeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
    // here in the following part eventhough 'answer' is the only one needed, we must add empty commas and show we aren't using other other elements in the tuple bcz tuples are immutable
        (
      ,
      int256 answer,
      ,
      ,
    ) = AddressInNeed.latestRoundData();
    // Here we return the value of USD in NWUnit. 1 USD = 10^18 NWUnit 
    // 1 eth = answer*(10^10) NWUnit
    // 1 eth = 10^9 GWEI , 10^9 GWEI = answer*(10^10) NWUnit
    // 1 GWEI = answer*(10^10)*(10^-9) NWUnit
    return uint256((answer*(10**10))); // NOTE: Unit of the returning value is NWUnit
    }

    /** Simple Math to Find USD the value of eth in USD
            
            1 USD = 10^18 NWUnit
            1 NWUnit = 10^-18 USD
            1 eth = answer*(10^10) NWUnit
            1 eth = answer*(10^10) * (10^-18) USD

    */

    function LetsGetVersionOfTheContract() public view returns(uint256){
        AggregatorV3Interface AddressInNeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        return AddressInNeed.version();
    }

// Input the Values in GWEI. Remember to mulitiply the final answer by '10^-18' 
   function GWEItoNWUnitConvertion(uint256 ethAmountinGWEI) public view returns(uint256) {
       uint256 Rate = GetLatestEthPrice();
       uint256 AmountInUSD = ethAmountinGWEI*Rate/(10**9);
       return AmountInUSD;
   }
}

