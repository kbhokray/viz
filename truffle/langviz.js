const LangViz = artifacts.require('./LangViz.sol');


let langViz;

contract('LangViz', function(accounts) {

	/*it('should add a translation and emit log', function(done) {
		LangViz.deployed().then(function(instance) {
			langViz = instance;
			assert.isOk(langViz);
			return null;// add entry
		}).then(function(result) {
			console.log(JSON.stringify(result));
			//check if logs are emitted
			done();
		});
	});*/

	/*it('should initialize with zero balance', function(done) {
		LangViz.deployed().then(function(instance) {
			langViz = instance;
			assert.isOk(langViz);
			//check balance
			return null;
		}).then(function(result) {
			console.log(JSON.stringify(result));
			//check if balance is zero
			done();
		});
	});*/

	/*it('should emit reward event', function(done) {
		LangViz.deployed().then(function(instance) {
			langViz = instance;
			assert.isOk(langViz);
			//add dictionary entry
			return null;
		}).then(function(result) {
			console.log(JSON.stringify(result));
			//send a translation
			return null;
		}).then(function(result) {
			console.log(JSON.stringify(result))
			//check for Reward event
			return null;
		});
	});*/

	/*it('should reward correct translation', function(done) {
		let initialBalance;
		LangViz.deployed()
		.then(function(instance) {
			langViz = instance;
			//set initalBalance variable
			return null;
		}).then(function(result) {
			langViz = instance;
			//add dictionary entry
			return null;
		}).then(function(result) {
			console.log(JSON.stringify(result));
			//send a translation
			return null;
		}).then(function(result) {
			console.log(JSON.stringify(result));
			//check balance
			return null;
		}).then(function(result) {
			console.log(JSON.stringify(result));
			// assert final balance = initial balance + reward
			done();
		});
	});*/

	/*it('should not emit reward correct translation', function(done) {
		let initialBalance;
		LangViz.deployed()
		.then(function(instance) {
			langViz = instance;
			//set initalBalance variable
			return null;
		}).then(function(result) {
			langViz = instance;
			//add dictionary entry
			return null;
		}).then(function(result) {
			console.log(JSON.stringify(result));
			//send a wrong translation
			return null;
		}).then(function(result) {
			console.log(JSON.stringify(result));
			//check balance
			return null;
		}).then(function(result) {
			console.log(JSON.stringify(result));
			// assert final balance != initial balance + reward
			done();
		});
	});*/
});