pragma solidity ^0.4.17;

contract Adoption {
  address[16] public adopters;

  function adopt(uint petId) public returns (uint) { 
  //ตรวจสอบ ไอดี
    require(petId >= 0 && petId <= 15);

    adopters[petId] = msg.sender;

    return petId;
  }
//ดึงข้อมูล
  function getAdopters() public view returns (address[16]) {
    return adopters;
  }
}
