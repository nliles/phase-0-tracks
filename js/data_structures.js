var horse_colors = ["ombre", "burgundy","lilac", "orange"];
var horse_names = ["ed", "al", "jimmy", "frank"];

horse_names.push("Maple");
horse_colors.push("lavendar");

console.log(horse_colors);
console.log(horse_names);

var horse_house = this;

for (var i = 0; i < horse_names.length; i++) {
        horse_house[horse_names[i]] = horse_colors[i];
}

console.log(horse_house);

function Car(year, make, model) {
    console.log("NEW CAR!", this);
    this.year = year;
    this.make = make;
    this.model = model;

    this.rev = function () {console.log("Vroom Vroom!"); };
}

var chevy = new Car(1999, "Chevy", "Cruz");
console.log(chevy)
chevy.rev();