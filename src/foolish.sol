
pragma solidity ^0.4.8;

import "ds-token/token.sol";

contract FoolsToken is DSToken {

    function FoolsToken(string name_, string symbol_, uint decimals_) 
        DSToken(name_, symbol_, decimals_) {
            _balances[msg.sender] = 100;
            _supply = 100;
    } 

    function bonk() {
        uint256 prize = _supply / 100;
        assert(_balances[msg.sender] + prize >= _balances[msg.sender]);
        _balances[msg.sender] += prize;
        _supply += prize;
    }
}