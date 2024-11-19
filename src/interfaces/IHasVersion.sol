// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

interface IHasVersion {
    /* External Functions ***********************************************************************************************/

    function version() external returns (string memory);
}