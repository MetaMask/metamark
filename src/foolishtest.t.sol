
pragma solidity ^0.4.8;

import "ds-test/test.sol";
import "./foolish.sol";

contract FoolsTokenTest is DSTest {

    FoolsToken token;

    function setUp() {
        token = new FoolsToken("Test", "TST", 18);
    }

    function testIncreaseSupply() {
        assertEq(token.totalSupply(), 100);
        token.bonk();
        assertEq(token.totalSupply(), 101);
        token.bonk();
        assertEq(token.totalSupply(), 102);
    }
}