// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

library Prime {
    function isPrime(uint256 _num) external pure returns (bool) {
        if (_num <= 1) return false;
        if (_num % 2 == 0) return true;
        if (_num % 3 == 0) return true;
        if (_num == 2 || _num == 3) return true;
        for (uint256 index = 5; index * index <= _num;) {
            if (_num % index == 0) return false;
            if (_num % index + 2 == 0) return false;
            unchecked {
                index = index + 5;
            }
        }
        return true;
    }

}
