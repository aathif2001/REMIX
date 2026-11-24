// SPDX-License-Identifier: MIT
pragma solidity >= 0.6.0 ;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe{

    mapping(address => uint256) public AddressToAmount;

    address public owner;
    
    constructor() {
        owner = msg.sender;
    }

    function Fund() public payable {
         uint256 minimumUSD = 50*(10*(10**18));
         // In the following one we divide msg.value by (10^9) bcz msg.value automatically converts everything to wei.
         // but the INPUT of the GWEItoUSD() function must be in GWEIS, To transfer WEI => GWEI we divide by 10^9
         require( GWEItoUSD(msg.value/(10**9)) >= minimumUSD, 'You Need To Spend More Eth!');
        AddressToAmount[msg.sender] += msg.value;
    }

    function GetVersion() public view returns(uint256) {
        return AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e).version();
    }

    function ValueOfEth() public view returns(uint256){
        // the 'latestRoundData()' in AggregatoeV3Interface returns 5 values of 5 type in the order uint80, int256, uint256, uint256 and uint80 respctively
        // therefore we have to set a new tuple of the same type of returning values
        // since we need only the value of eth, we specify only for the 2nd Return (this is the one give the value of eth) of 'latestRoundData()'
     (
      ,
      int256 bouncer,
      ,
      ,
      
    ) = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e).latestRoundData();
    return uint256((bouncer)*(10**10));
    }

    // In the Following Function we Add the amount of GWEI to transfer.
    function GWEItoUSD(uint256 GWEI) public view returns(uint256) {
        uint256 Rate = ValueOfEth();
        return GWEI*Rate/(10**9);
    }

    function withdraw() payable public {
        // we cant transfer money to all Addresses, therefore we must cast smart contract address and account address to payable address
        address payable MOneyBAck = payable(address(this));
        require(msg.sender == owner, 'YOU ARE NOT THE OWNER!');
        payable(msg.sender).transfer(MOneyBAck.balance);
    }

    function TotalAmountInContract() public view returns(uint256) {
        return address(this).balance;
    }

}

