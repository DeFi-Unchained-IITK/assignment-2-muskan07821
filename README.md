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











