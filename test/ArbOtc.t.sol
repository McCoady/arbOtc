// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/ArbOtc.sol";

contract ContractTest is Test {
    ArbOtc otc;
    function setUp() public {
        otc = new ArbOtc();
    }

    function testTokenAddresses() public {
        address arb = otc.ARB_ADDRESS();
        address usdc = otc.USDC_ADDRESS();
        assertEq(arb, 0x912CE59144191C1204E64559FE8253a0e49E6548);
        assertEq(usdc, 0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8);
    }
}
