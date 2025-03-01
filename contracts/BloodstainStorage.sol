// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BloodstainStorage {
    struct Bloodstain {
        string imageUrl;
        string stainType;
        string analysisResult;
    }

    mapping(uint256 => Bloodstain) private bloodstains;
    uint256 private bloodstainCount;

    event BloodstainStored(uint256 id, string imageUrl, string stainType, string analysisResult);

    constructor() {}

    function storeBloodstain(string memory _imageUrl, string memory _stainType, string memory _analysisResult) public {
        bloodstainCount++;
        bloodstains[bloodstainCount] = Bloodstain(_imageUrl, _stainType, _analysisResult);
        emit BloodstainStored(bloodstainCount, _imageUrl, _stainType, _analysisResult);
    }

    function getBloodstain(uint256 _id) public view returns (string memory, string memory, string memory) {
        require(_id > 0 && _id <= bloodstainCount, "Invalid bloodstain ID");
        Bloodstain memory b = bloodstains[_id];
        return (b.imageUrl, b.stainType, b.analysisResult);
    }
}
