# TransparentSchoolFund 🏫🛡️

**A decentralized solution for school fund management, ensuring financial transparency and community trust.**

---

## 📖 Overview

In many community organizations, such as school parent unions (e.g., the "Tesorera/o" system in Chile), managing collective funds often suffers from a **lack of transparency**. Traditionally, a single person handles cash or a personal bank account, leading to potential mismanagement, "lost" records, or trust disputes.

**TransparentSchoolFund** is a decentralized application (DApp) logic built on the Ethereum blockchain. It moves the classroom treasury to a Smart Contract, ensuring that every cent contributed is tracked, and every expenditure is publicly documented.

## 🚀 Key Features

* **Immutable Ledger:** Every parent contribution is recorded in a public mapping. Once a payment is made, it cannot be altered.
* **Auditable Spending:** The Treasurer cannot withdraw funds without attaching a clear "description" and a "recipient" address, creating a permanent audit trail.
* **Real-time Monitoring:** Uses Solidity Events to allow external applications to track fund movements instantly.

## 🛠️ Technical Stack & Concepts

This project demonstrates proficiency in the following Solidity concepts:

| Concept | Implementation in this Project |
| :--- | :--- |
| **Fund Handling** | Use of `payable`, `transfer`, and `address(this).balance`. |
| **Data Structures** | `structs` for Expense records and `mappings` for individual balances. |
| **Access Control** | Ownership logic to restrict sensitive functions to the Treasurer. |
| **Events** | Logging of critical actions for off-chain tracking. |

## 📂 Project Structure

```text
TransparentSchoolFund/
├── contracts/
│   └── SchoolFund.sol      # Main Smart Contract logic
├── README.md               # Project documentation
└── .gitignore              # Files to be ignored by Git