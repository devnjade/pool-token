//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PoolToken is ERC20, Ownable {
  uint constant initialSupply = 10000000 * (10**18);
  bool public enableMinting;

  constructor() ERC20('Pool', 'POLX') {
    _mint(msg.sender, initialSupply);
  }

  function mint(address _to, uint _amount) external onlyOwner{
    _mint(_to, _amount);
  }

  function burn(uint _amount) external onlyOwner{
    _burn(owner, _amount);
  }
}
