pragma solidity >=0.4.21 <0.7.0;


contract DappToken {
    uint256 public totalSupply; //total number of tokens

    constructor() public {
        totalSupply = 1000000;
    }
}
