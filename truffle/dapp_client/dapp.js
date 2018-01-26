const abiDefinition = ""; //LangViz ABI;
const langVizAddress = ""; //LangViz address

let langViz;

$(document).ready(function() {
    // Checking if Web3 has been injected by the browser (Mist/MetaMask)
    if (typeof web3 !== 'undefined') {
        // Use Mist/MetaMask's provider
        window.web3 = new Web3(web3.currentProvider);
      } else {
        console.log('Injected web3 Not Found!!!')
        // fallback - use your fallback strategy (local node / hosted node + in-dapp id mgmt / fail)
        window.web3 = new Web3(new Web3.providers.HttpProvider('http://localhost:8545'));
        // window.web3 = new Web3(new Web3.providers.HttpProvider(provider));
      }

      startApp();
    });

function startApp() {
  let LangViz = ""//instantiate contract
  getBalance((err, balance) => {
    console.log(err);
    $('#balance').text(balance);
  });
  getLogs();
}

let translate = function(key, translation, cb) {
  //send transaction
}

let getBalance = function(cb) {
  //do balance call
  return 0;
}

function addEvent (textToAdd) {
  let eventDiv = document.createElement("div");
  let eventTextNode = document.createTextNode("Event received");
  eventDiv.appendChild(eventTextNode); 
  document.getElementById("eventcontainer").appendChild(eventDiv);    
}

let getLogs = function() {
  //listen on event
}
