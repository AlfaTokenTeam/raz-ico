pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract RAZ is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function RAZ(address _owner)  UpgradeableToken(_owner) {
    name = "RAZ";
    symbol = "RAC";
    totalSupply = 6000000000;
    decimals = 4;

    balances[_owner] = totalSupply;
  }
}