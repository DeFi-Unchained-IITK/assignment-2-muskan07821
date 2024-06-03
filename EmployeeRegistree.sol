// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract EmployeeRegistree{
     event EmployeeAdded(uint ID, string name, string position, uint salary);
    event EmployeeUpdated(uint ID, string name, string position, uint salary);
    event EmployeeDeleted(uint ID, string name, string position, uint salary);
    
    struct Employee {
        uint ID;
        string name;
        string position;
        uint salary;
    }
    mapping(uint => Employee) public employeeByID;
    uint public ID_For_Next_Employee = 1;
   
    function AddEmployee(string memory _name, string memory _position, uint _salary) public{
        employeeByID[ID_For_Next_Employee] = Employee(ID_For_Next_Employee, _name, _position, _salary);
        emit EmployeeAdded (ID_For_Next_Employee,_name, _position, _salary);
        ID_For_Next_Employee++;
    }
    function UpdateEmployee(uint _ID, string memory _name, string memory _position, uint _salary) public {
        require(employeeByID[_ID].ID!=0,"Employee doesn't exist");
        employeeByID[_ID] = Employee(_ID, _name, _position, _salary);
        emit EmployeeUpdated (_ID, _name, _position, _salary);
    }
    function DeleteEmployee(uint _ID) public {
        require(employeeByID[_ID].ID!=0,"Employee doesn't exist");
        string memory _name = employeeByID[_ID].name;
        string memory _position =employeeByID[_ID].position;
        uint _salary = employeeByID[_ID].salary;
       delete employeeByID[_ID];
       emit EmployeeDeleted (_ID, _name, _position, _salary);
    }
    function GetEmployeeDetails(uint _ID) view public returns (string memory, string memory, uint){
        require(employeeByID[_ID].ID!=0,"Employee doesn't exist");
        return (employeeByID[_ID].name,employeeByID[_ID].position, employeeByID[_ID].salary);
    }

}
