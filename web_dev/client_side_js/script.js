
console.log("The script is running");


// var photo = document.getElementsByTagName("img")[0];

// photo.style.border = "3px solid black";


document.body.style.backgroundColor = "#F4C2C2";

var body = document.getElementsByTagName("body")[0];

body.style.fontFamily = "Helvetica";

body.style.textAlign = "center";

var head = document.getElementsByTagName("head")[0];

head.style.fontFamily = "Helvetica";

var b = document.createElement("BR");

document.body.appendChild(b);


var button = document.createElement("Button");
var text = document.createTextNode("Click for More Styles");
button.appendChild(text);
document.body.appendChild(button);

var b2 = document.createElement("BR");

document.body.appendChild(b2);

var button2 = document.createElement("Button");
var text2 = document.createTextNode("Buy Boots Here");
button2.appendChild(text2);
document.body.appendChild(button2);

function addBlackBorder() {
	var photo = document.getElementsByTagName("img")[0];
	photo.style.border="3px solid black";
}

addBlackBorder();
