// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract PrimeOwner{
    address public owner;
    event ownerchanged(address indexed newowner);
    function ownerchange(uint _x) public {
        require(_x>1,"input is less than one");
        if(_isprime(_x)){ 
        owner = msg.sender;
        emit ownerchanged(owner);
        }
        else{
            revert("Number is not prime");
        }
    }
    
    function _isprime(uint _x) pure private returns(bool){
        for(uint i=2;i<_x;i++){
            if(_x%i == 0){
                return false;
            }
        }
        return true;
    }

    
}

