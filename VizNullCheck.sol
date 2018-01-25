pragma solidity ^0.4.16;


contract VizNullCheck {

  // Un initialized storage variable declarations
  // Initialized to 0s
  struct Struct {
    address owner;
    string  name;
  }
  
  address     addr;
  string      str;
  bytes32     keyword;
  int[7]      staticArray;
  uint8[]     dynamicArray;
  Struct  structInst;
  mapping(uint8 => bytes32) map;
  

  function  checkZeroValues(){
    bool  isNull;

    isNull = (addr == address(0x0));
    isNull = (addr == 0x0);
    // For string check its length
    isNull = (bytes(str).length == 0);
    // For bytes##
    isNull = (keyword == 0  ||  keyword == 0x0);
    // For dynamic arrays
    isNull = (dynamicArray.length == 0);
    // For static array check depends on the element type
    isNull = (staticArray[0] == 0);
    // Struct - check for some attribute of struct for 0 value
    isNull = (structInst.owner == 0x0);
    isNull = (bytes(structInst.name).length == 0);
    // mapping - all keys have 0 values i.e., all keys exist
    isNull = (map[19] == 0x0);
  }

}
