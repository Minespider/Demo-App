pragma solidity ^0.4.2;

contract Coursetro {

   string fName;
   string fLocation;

   event Instructor(
       string name,
       string location
    );

   function setInstructor(string _fName, string _fLocation) public {
       fName = _fName;
       fLocation = _fLocation;
       Instructor(_fName, _fLocation);
   }

   function getInstructor() public constant returns (string, string) {
       return (fName, fLocation);
   }

}
