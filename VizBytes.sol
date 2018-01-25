pragma solidity ^0.4.16;

contract VizBytes {
    byte[3]  byte3;
    bytes bytesArray;
    
    function f() public {
        byte3 = [byte(1),2,3];
        
        bytes memory bts;
        bts = new bytes(20);
        bts[0]='a';
        bts[1] = 'b';
    }
}
