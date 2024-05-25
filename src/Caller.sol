// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

import {TicTacToken} from "../src/TicTacToken.sol";

contract Caller {
    TicTacToken internal ttt;

    constructor(TicTacToken _ttt) {
        ttt = _ttt;
    }
    function call() public view returns (address) {
        return ttt.msgSender();
    }
}
