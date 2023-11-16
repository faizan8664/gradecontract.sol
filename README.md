# Academic Eligibility Smart Contract

## Overview

The Academic Eligibility Smart Contract, implemented in Solidity for the Ethereum blockchain, provides a streamlined solution for tracking student attendance, recording eligible marks, and determining eligibility for exams based on specific criteria. This contract aims to enhance transparency and reliability in academic processes.

## Key Features

1. **Note Attendance:**
   - The `NoteAttendance` function empowers students to securely record their attendance on the blockchain.
   - Attendance values must be within the 0 to 100 range, ensuring accurate and valid data.

2. **Note Eligible Marks:**
   - The `Note_EligibleMarks` function allows students to input their eligible marks, promoting a decentralized and tamper-resistant academic record.
   - Eligible marks are rigorously validated to ensure they fall within the acceptable range of 0 to 100.

3. **Eligibility Status:**
   - The `Eligibility_status` function provides a transparent, read-only view of a student's eligibility for exams.
   - Students meeting the criteria of attendance equal to or greater than 75 and eligible marks equal to or greater than 65 are deemed "Eligible for Exam."
   - The contract employs robust error handling mechanisms, reverting with a clear message if eligibility criteria are not met.

4. **Assertions and Error Handling:**
   - The contract utilizes `require` statements to enforce boundaries on attendance and eligible marks.
   - `assert` statements safeguard the contract against unexpected conditions, ensuring the integrity of the academic data.

## Usage Guidelines

1. **Recording Attendance:**
   - Use the `NoteAttendance` function to securely log your attendance, providing an accurate representation.

2. **Recording Eligible Marks:**
   - Utilize the `Note_EligibleMarks` function to input your eligible marks, fostering a decentralized and transparent academic environment.

3. **Checking Eligibility:**
   - Execute the `Eligibility_status` function to gain insights into your eligibility for upcoming exams.
   - A response of "Eligible for Exam" indicates meeting the criteria, while a revert message states "Not eligible for Exam."

## Author

mohammedfaiz

mohammedfaiz866@gmail.com


## License

This smart contract is released under the MIT License. Refer to the SPDX-License-Identifier tag in the source code for detailed licensing information.

