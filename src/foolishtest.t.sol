
pragma solidity ^0.4.8;

import "ds-test/test.sol";
import "./foolish.sol";

contract FoolsTokenTest is DSTest {

    FoolsToken token;

    function setUp() {
        token = new FoolsToken("Test", "TST", 18);
    }

    function testIncreaseSupply() {
        assertEq(token.totalSupply(), 100000000000000000000);
        token.bonk();
        assertEq(token.totalSupply(), 101000000000000000000);
        token.bonk();
        assertEq(token.totalSupply(), 102010000000000000000);
    }
}