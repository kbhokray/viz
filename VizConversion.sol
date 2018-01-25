pragma solidity ^0.4.16;

contract VizCoversion {
    
    function VizConversion() {
        
        /* Implicit Conversion */
        // uint8 a = 3;
        // uint8 b = 256;
        // uint16 c = 256;
        // a = c;
        // c = a;
        // if(1) { /*do something*/ }
        
        /* Explicit Conversion */
        // uint8 d;
        // uint16 e = 5;
        // d = e;
        // d = uint8(e);
        
        /* Deduced Conversion */
        // uint8 f = 8;
        // uint16 g = 10;
        // var h = f;
        // h = g;
        // h = uint8(g);
    }
}
