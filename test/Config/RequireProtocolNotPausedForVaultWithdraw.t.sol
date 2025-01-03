// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import { BaseTest } from "test/BaseTest.sol";
import { IKernelConfig } from "src/interfaces/IKernelConfig.sol";

contract RequireProtocolNotPausedForVaultWithdrawTest is BaseTest {
    /// Expect revert when protocol is paused
    function test_RequireProtocolNotPausedForVaultsWithdraw() public {
        _startPrank(users.pauser);

        // pause protocol
        config.pauseFunctionality("PROTOCOL");

        // expect revert
        _expectRevertCustomError(IKernelConfig.ProtocolIsPaused.selector);
        config.requireFunctionalityVaultsWithdrawNotPaused();
    }
}
