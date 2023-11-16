// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GradeContract {
    mapping(address => uint) private studentAttendance;
    mapping(address => uint) private eligibleMarks;

    function NoteAttendance(uint _attendance) public {
        require(_attendance >= 0 && _attendance <= 100, "Attendance should be in between 0 and 100");
        studentAttendance[msg.sender] = _attendance;
    }

    function Note_EligibleMarks(uint _marks) public {
        assert(_marks >= 0 && _marks <= 100);
        eligibleMarks[msg.sender] = _marks;
    }

    function Eligibility_status() public view returns (string memory) {
        uint attendance = studentAttendance[msg.sender];
        uint marks = eligibleMarks[msg.sender];
        
        require(attendance >= 0 && attendance <= 100, "Attendance should be in between 0 and 100");
        require(marks >= 0 && marks <= 100, "Marks should be in between 0 and 100");

        if (attendance >= 75 && marks >= 65) {
            return "Eligible for Exam";
        } else {
            revert("Not eligible for Exam");
        }
    }
}
