// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // Starting our version

// pragma solidity >= 0.8.18 < 0.9.0; // This codes only works for any version  >= 0.8.18 and version < 0.9.0

contract SimpleStorage {
    // string my_name = "Usman Abdullahi";
    // bool isTall = true;
    // address myMetamask = 0x99Fb1544479Aa234aa2bc0C0B073595dCDA11786;
    // int256 myAge = 300;
    // bytes32 mySex = "male";

    uint256 public favouriteNumber = 5;

    struct Person {
        uint256 myFavouriteNumber;
        string name;
    }
    // Person public pat = Person(1, "Usman");
    // Person public pat = Person({myFavouriteNumber: 9, name: "Usman"});
    // Dynamic Array
    Person[] public listOfPeople;

    // public, private, external, internal.
    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
        favouriteNumber = _favouriteNumber + 1;
        retrieve();
    }

    // view: keywords only for viewing or reading state and it is not allowed to make any modification
    // pure:
    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _myFavouriteNumber) public {
        listOfPeople.push(Person(_myFavouriteNumber, _name));
    }

    address FirstAddressDeployed = 0xd9145CCE52D386f254917e481eB44e9943F39138;
}
// 0x6080604052600560005534801561001557600080fd5b5060e3806100246000396000f3fe6080604052348015600f57600080fd5b506004361060285760003560e01c80636057361d14602d575b600080fd5b60436004803603810190603f91906085565b6045565b005b8060008190555050565b600080fd5b6000819050919050565b6065816054565b8114606f57600080fd5b50565b600081359050607f81605e565b92915050565b6000602082840312156098576097604f565b5b600060a4848285016072565b9150509291505056fea264697066735822122007e3785fbe17e520341a0b5d5451722188e62f4055f1bd09640d71a1cffbb8e064736f6c63430008120033
