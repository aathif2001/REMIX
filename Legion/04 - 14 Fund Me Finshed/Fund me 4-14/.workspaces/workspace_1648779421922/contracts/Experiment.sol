// SPDX-License-Identifier: MIT
pragma solidity >= 0.6.0;

import './FundMe3.sol';

contract Experiment{

    FundMe[] public FundMeArray;

    function PushFundMe() public {
        FundMe FondMe = new FundMe();
        FundMeArray.push(FondMe);
    }

    function ShowArrayLength() public view returns(uint256) {
        return FundMeArray.length;
    }
}