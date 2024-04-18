// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AnimalRegistry {
    // Array to store animal names
    string[] public animalNames;

    // Function to add an animal
    function addAnimal(string memory _name) public {
        // Add the new animal name to the array
        animalNames.push(_name);
    }

    // Function to retrieve an animal by index
    function getAnimalByIndex(uint _index) public view returns (string memory) {
        // Check if the index is within the array bounds
        require(_index < animalNames.length, "Index out of bounds");

        // Return the animal name at the given index
        return animalNames[_index];
    }
}

 