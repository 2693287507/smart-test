// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract HelloWorld {
    string sayStr = "Hello World";
    function sayHello() public view returns(string memory) {
        return addInfo(sayStr);
    }
    function sayHelloLang(string memory params) public  {
        sayStr = params;
    }

    function addInfo(string memory params) internal pure returns (string memory) {
        return string.concat(params, ' HHHHHH');
    }
}
