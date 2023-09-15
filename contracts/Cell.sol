// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract BoardColor {
    uint8[7][5] public board;
    enum Color {
        white,
        black,
        red,
        blue
    }

    function setCellColor(uint8 x, uint8 y, Color _color) external {
        board[x][y] = uint8(_color) + 1;
    }

    function getCellColor(uint8 x, uint8 y) external view returns (uint8) {
        return board[x][y];
    }

    function _getColor(uint8 _id) internal pure returns (string memory) {
        if (_id == 2) return "black";
        if (_id == 3) return "red";
        if (_id == 4) return "blue";
        return "white";
    }
}
