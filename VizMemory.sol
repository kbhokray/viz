pragma solidity ^0.4.16;

contract VizMemory {
    
    uint[] stateArray1; // the data location of stateArray1 is storage
    uint[] stateArray2 = [5, 6 ,7, 8];
    uint[] stateArray3 = [9, 10, 11, 12];

    // the data location of memoryArray is memory
    function f(uint[] memoryArray) public {
        
        // works, copies the whole array to storage
        stateArray1 = memoryArray; 
        // works, assigns a pointer, data location of y is storage
        var y = stateArray1; 
        // fine, returns the 2nd element
        y[2]; 
        // fine, modifies stateArray1 through y
        y.length = 2;
        
        // fine, clears the array, also modifies y
        delete stateArray1;
        
        // error since g expects storage array reference
        // g(memoryArray);
        
        // changes stateArray2
        g(stateArray2);
        // doesn't change stateArray2 since data is copied into new memoryArray 
        h(stateArray2);
        
        // array literals are memory array of fixed size
        uint[3] memory fixedSizeArrayInit = [uint(1), 2, 3];
        // new keyword to init memory array
        uint[] memory memoryArrayInit = new uint[](7);
        
        // ?
        // h([uint(1), 2, 3]);
        // ?
        // i([uint(1), 2, 3]);
        
        
        // throws an error
        // uint[] storage storageArrayInit = new uint[](7);

        // The following does not work; it would need to create a new temporary /
        // unnamed array in storage, but storage is "statically" allocated:
        // y = memoryArray;
        // This does not work either, since it would "reset" the pointer, but there
        // is no sensible location it could point to.
        // delete y;

    }

    function g(uint[] storage stateArrayParam) internal {
        // creates a reference to stateArray2
        // modifies stateArray2
        stateArrayParam[0] = 13;
        stateArrayParam = stateArray3;
        stateArrayParam[0] = 14;
    }
    function h(uint[] memoryArrayParam) public {
        // creates an independent, temporary copy in memory
        // modifies memoryArrayParam whithout changing stateArray2
        memoryArrayParam[0] = 15;
        //copies stateArray3 into memoryArrayParam
        memoryArrayParam = stateArray3;
        // modifies memoryArrayParam whithout changing stateArray3
        memoryArrayParam[0] = 16;
    }
    function i(uint[3] fixedArrayParam) public {
        
    }
}
