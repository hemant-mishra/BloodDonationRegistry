Here’s a **README** file for your **Blood Donation Registry** project:

---

# Blood Donation Registry

The **Blood Donation Registry** is a decentralized platform built on Ethereum where users can register as blood donors, make blood donation requests, and track donations. It leverages the power of smart contracts to ensure transparency, security, and accountability for all users involved.

This project consists of an Ethereum smart contract and a web frontend that interacts with the contract through **Web3.js** and **MetaMask**.

## Features

- **Register as a Blood Donor**: Users can register themselves as blood donors by providing their name and blood group.
- **Request Blood**: Users can make blood requests based on the required blood group.
- **Event Logging**: The contract emits events whenever a donor registers or a blood request is made, ensuring transparency.
- **Real-time Updates**: Donor information is displayed dynamically when registration events occur.

## Prerequisites

To interact with this platform, you will need:

- **MetaMask** installed in your browser (for interacting with the Ethereum blockchain).
- **Node.js** (if you're running the application locally).
- **An Ethereum network** (Rinkeby Testnet, Ropsten, or Ethereum mainnet for production).
- **Web3.js** (included in the frontend for interacting with the Ethereum network).

## How to Set Up

### 1. **Install MetaMask**

MetaMask is a browser extension that acts as a bridge between your browser and the Ethereum blockchain. You can install it from [here](https://metamask.io/).

### 2. **Deploy the Smart Contract**

The contract for this project is written in Solidity and needs to be deployed to an Ethereum network (e.g., Rinkeby or Ethereum mainnet).

- Copy the contract code (`BloodDonationRegistry.sol`).
- Use **Remix** IDE or any other Ethereum IDE to deploy the contract.
- Once deployed, note the contract address.

### 3. **Clone or Download the Frontend**

Clone or download this repository to your local machine.

```bash
git clone https://github.com/yourusername/blood-donation-registry.git
cd blood-donation-registry
```

### 4. **Replace the Contract Address in the Frontend**

In the frontend HTML file (`index.html`), replace the placeholder `YOUR_CONTRACT_ADDRESS` with the actual contract address you obtained after deployment.

```javascript
const contractAddress = "YOUR_CONTRACT_ADDRESS"; // Replace with your contract's deployed address
```

### 5. **Run the Frontend**

To run the frontend:

1. Open the `index.html` file in your web browser. You can do this directly or serve it using a local server.

   For a local server, you can use Python (if installed):

   ```bash
   # For Python 3.x
   python3 -m http.server 8000
   ```

   Then navigate to `http://localhost:8000` in your browser.

### 6. **Connect MetaMask to the DApp**

Once the frontend is open in your browser, you can click on the **Connect MetaMask** button to connect your Ethereum wallet. Make sure your MetaMask is set to the same network where your contract is deployed (e.g., Rinkeby or Ethereum Mainnet).

### 7. **Interact with the Application**

Once connected, you can:

- **Register as a Blood Donor**: Enter your name and select your blood group, then click "Register as Donor".
- **Request Blood**: Choose a blood group and make a request by clicking the "Request Blood" button.

The events will be logged on the blockchain, and the details will be dynamically displayed on the page.

## Code Overview

### Smart Contract: `BloodDonationRegistry.sol`

This is the smart contract written in **Solidity**:

- **Struct `Donor`**: Holds donor information like name, last donation date, and blood group.
- **Mappings**:
  - `donors`: Stores donor details by their Ethereum address.
  - `bloodRequests`: Tracks blood requests by blood group.
- **Functions**:
  - `registerBloodDonor`: Allows users to register as blood donors with their name and blood group.
  - `requestBlood`: Allows users to request blood by blood group.
  - **Events**:
    - `DonorRegistered`: Triggered when a donor successfully registers.
    - `BloodRequested`: Triggered when a blood request is made.

### Frontend: `index.html`

This is a basic HTML and JavaScript application:

- **Web3.js Integration**: The frontend interacts with the Ethereum blockchain using Web3.js.
- **MetaMask Wallet**: Users can connect their wallet via MetaMask.
- **Donation Actions**: Users can register as donors and make blood requests using buttons on the UI.
- **Event Handling**: The frontend listens for contract events (`DonorRegistered` and `BloodRequested`) and displays donor details accordingly.

## Contract Methods

- **registerBloodDonor(string memory name, uint256 bloodGroup)**: Registers a new blood donor with their name and blood group.
- **requestBlood(uint256 bloodGroup)**: Requests blood of a specific blood group.
- **Events**:
  - **DonorRegistered**: Logs when a new donor registers.
  - **BloodRequested**: Logs when a new blood request is made.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Conclusion

This **Blood Donation Registry** is a simple yet powerful decentralized platform that leverages Ethereum's blockchain to track blood donations and requests in a transparent, immutable way. It allows donors to register and contribute to their community by providing blood when needed, ensuring a fair and transparent system.

Feel free to fork and modify this project as needed to fit your use case or deploy it in your own environment.
