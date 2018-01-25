pragma solidity ^0.4.16;

contract ExampleContract {
	uint state1 = 1;
	
	function getState(uint mult) returns (uint a, uint b){
		a = state1;
		b = mult * a;                 
	}

	function f(uint num) constant returns (uint) {       
		var (st1, st2) = getState(num);
		return(st2)
	}
}