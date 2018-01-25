library Search {
	function indexOf(uint[] storage self, uint value) public view returns (uint) {
		address context = this;
		for (uint i = 0; i < self.length; i++) {if (self[i] == value) return i;}
		return uint(-1);
	}
}
contract C {
	using Search for uint[];
	uint[] data;

	function replace(uint _old, uint _new) public {
		uint index = data.indexOf(_old);
		if (index == uint(-1)) {data.push(_new);}
		else { data[index] = _new;}
	}
}