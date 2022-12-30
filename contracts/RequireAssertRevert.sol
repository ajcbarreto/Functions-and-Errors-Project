//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract RequireAssertRevert {
    // Declare a public variable `x` of type uint256
    uint256 public x;

    // Define a function `setX` that sets the value of `x`
    function setX(uint256 _x) public {
        // Use the require statement to ensure that the input value is greater than 0
        require(_x > 0, "x must be greater than 0");

        // Set the value of `x`
        x = _x;
    }

    // Define a function `divide` that divides `x` by a given value `y`
    function divide(uint256 y) public view returns (uint256) {
        // Use the assert statement to ensure that `y` is not equal to 0
        assert(y != 0);

        // Return the result of `x` divided by `y`
        return x / y;
    }


    // Define a function `add` that adds a given value `y` to `x`
    function add(uint256 y) public {
        // Use the revert statement to undo the addition if `y` is greater than 1000
        if(y > 1000){
            revert("y must be less than or equal to 1000");
        }
        
        // Add `y` to `x`
        x += y;
    }
}
