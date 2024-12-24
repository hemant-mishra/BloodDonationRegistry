// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BloodDonationRegistry {

    struct Donor {
        string name;
        uint256 lastDonationDate;
        uint256 bloodGroup; // Blood group encoded as a number (e.g., 1 = A+, 2 = B+, etc.)
        bool isRegistered;
    }

    mapping(address => Donor) public donors;

    // Event to log when a donor registers
    event DonorRegistered(address indexed donor, string name, uint256 bloodGroup);

    // Event to log when a blood request is made
    event BloodRequested(address indexed requester, uint256 bloodGroup);

    // Function 1: Register a new blood donor
    function registerBloodDonor(string memory name, uint256 bloodGroup) external {
        require(bloodGroup > 0 && bloodGroup <= 8, "Invalid blood group"); // Blood group must be between 1 and 8 (A+, B+, O+, etc.)
        require(!donors[msg.sender].isRegistered, "You are already registered");

        donors[msg.sender] = Donor({
            name: name,
            lastDonationDate: block.timestamp,
            bloodGroup: bloodGroup,
            isRegistered: true
        });

        // Emit event when a donor registers
        emit DonorRegistered(msg.sender, name, bloodGroup);
    }

    // Function 2: Request blood by blood group
    function requestBlood(uint256 bloodGroup) external {
        require(bloodGroup > 0 && bloodGroup <= 8, "Invalid blood group");

        // Emit event when a blood request is made
        emit BloodRequested(msg.sender, bloodGroup);
    }
}
