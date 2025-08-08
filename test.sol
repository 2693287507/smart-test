// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

// struct 结构体
// array 数组
// mapping 映射

contract HelloWorld {
    string sayStr = "Hello World";
    struct Info {
        uint id;
        string phrase;
        address addr;
    }
    Info[] infos;

    mapping (uint256 _id => Info info) infoMapping;

    function sayHello(uint256 _id) public view returns(string memory) {
        if(infoMapping[_id].addr == address(0x0)) {
            return addInfo(sayStr);
        }
        return addInfo(infoMapping[_id].phrase);
        // for (uint256 i = 0; i < infos.length; i++) {
        //     if(_id == infos[i].id) {
        //         return addInfo(infos[i].phrase);
        //     }
        // }
        // return addInfo(sayStr);
    }

    function sayHelloLang(string memory params) public  {
        sayStr = params;
    }

    function addInfo(string memory params) internal pure returns (string memory) {
        return string.concat(params, ' LJW');
    }
    
    function setInfos(string memory message, uint256 _id) public {
        Info memory info = Info(_id, message, msg.sender);
        infoMapping[_id] = info;
        infos.push(info);
    }
}
