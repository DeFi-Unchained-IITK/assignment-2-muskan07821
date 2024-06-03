# Assignment-2

## Question 1 Code Explaination:
The `PrimeOwner` contract allows for the ownership to be changed if a prime number greater than 1 is provided. It includes functions to check for prime numbers and change the owner accordingly.

### Code Breakdown

#### State Variables
- `address public owner`: Stores the address of the contract owner.

#### Events
- `event ownerchanged(address indexed newowner)`: Emits an event when the owner is successfully changed, with the new owner's address.

#### Functions

1. **ownchange(uint _x)**
    - **Purpose**: To change the ownership of the contract.
    - **Logic**:
        - `require(_x > 1, "input is less than one");`: Ensures the input `_x` is greater than 1. If not, it reverts with an error message.
        - `if(_isprime(_x))`: Checks if `_x` is a prime number using the `_isprime` function.
            - If true:
                - `owner = msg.sender;`: Sets the contract owner to the address of the caller.
                - `emit ownerchanged(owner);`: Emits the `ownerchanged` event with the new owner's address.
            - If false:
                - `revert("Number is not prime");`: Reverts the transaction with an error message.

2. **_isprime(uint _x)**
    - **Purpose**: To check if a given number `_x` is prime.
    - **Logic**:
        - Iterates from 2 to `_x-1`.
        - If `_x` is divisible by any number in this range, returns `false`.
        - If no divisors are found, returns `true`.

## Question 2 Code Explaination:
The `EmployeeRegistree` smart contract allows you to add, update, delete, and retrieve employee information. It manages employees using a unique ID for each employee.

## Contract Details

### State Variables
- `ID_For_Next_Employee`: Tracks the ID for the next employee to be added.
- `mapping(uint => Employee) public employeeByID`: Maps an employee's ID to their details.

### Struct
- `Employee`: Defines the structure of an employee with the following properties:
  - `uint ID`: The unique identifier for the employee.
  - `string name`: The name of the employee.
  - `string position`: The job position of the employee.
  - `uint salary`: The salary of the employee.

### Events
- `EmployeeAdded(uint ID, string name, string position, uint salary)`: Emitted when a new employee is added.
- `EmployeeUpdated(uint ID, string name, string position, uint salary)`: Emitted when an existing employee's details are updated.
- `EmployeeDeleted(uint ID, string name, string position, uint salary)`: Emitted when an employee is deleted.

### Functions

1. **AddEmployee(string memory _name, string memory _position, uint _salary)**
    - **Purpose**: Adds a new employee with the given details.
    - **Emits**: `EmployeeAdded` event with the employee's details.

2. **UpdateEmployee(uint _ID, string memory _name, string memory _position, uint _salary)**
    - **Purpose**: Updates the details of an existing employee.
    - **Requirements**: The employee with the given ID must exist.
    - **Emits**: `EmployeeUpdated` event with the updated details.

3. **DeleteEmployee(uint _ID)**
    - **Purpose**: Deletes an existing employee.
    - **Requirements**: The employee with the given ID must exist.
    - **Emits**: `EmployeeDeleted` event with the deleted employee's details.

4. **GetEmployeeDetails(uint _ID) view public returns (string memory, string memory, uint)**
    - **Purpose**: Retrieves the details of an employee by their ID.
    - **Returns**: The name, position, and salary of the employee.
    - **Requirements**: The employee with the given ID must exist.
  
## Screenshots of Question 1 Code execution

![Q1 1](https://github.com/DeFi-Unchained-IITK/assignment-2-muskan07821/assets/171270678/3f567204-b100-4081-8367-5751aa1fb11f)
![Q1 2](https://github.com/DeFi-Unchained-IITK/assignment-2-muskan07821/assets/171270678/f79643af-3154-4990-887f-95f5864864e6)

## Screenshots of Question 2 Code execution
![Q2 1](https://github.com/DeFi-Unchained-IITK/assignment-2-muskan07821/assets/171270678/5d760870-7ee9-493f-8f95-035186c4bdc1)
![Q2 2](https://github.com/DeFi-Unchained-IITK/assignment-2-muskan07821/assets/171270678/b08d1519-80ab-48e8-ad34-6e35b5e80d24)
![Q2 3](https://github.com/DeFi-Unchained-IITK/assignment-2-muskan07821/assets/171270678/a5f29f62-3433-483a-88a4-2d44b22ef6e7)
![Q2 4](https://github.com/DeFi-Unchained-IITK/assignment-2-muskan07821/assets/171270678/0865bdf4-dff6-46a3-8b69-ac48b576e39c)












