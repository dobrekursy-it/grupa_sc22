// to jest zmienna ktora ma mnie informowac ile ...
let ileMinutDoKoncaLekcji = 6;

while (ileMinutDoKoncaLekcji >= 0) {
  if (ileMinutDoKoncaLekcji > 1 && ileMinutDoKoncaLekcji < 5) {
    console.log("Zostało " + ileMinutDoKoncaLekcji + " minuty do konca lekcji");
  } else if (ileMinutDoKoncaLekcji == 1) {
    console.log("Zostało 1 minuta do konca lekcji");
  } else {
    console.log("Zostało " + ileMinutDoKoncaLekcji + " minut do konca lekcji");
  }
  ileMinutDoKoncaLekcji -= 1;
}


const slowka = ['europa', 'africa', 'asia', 'ocenia', 'south america'];
let i = 0;
while (i < slowka.length) {
  console.log("Word " + slowka[i] + " has " + slowka[i].length + " characters(s)");
  i+= 1;
}


for (let j = 0; j< slowka.length; j += 1) {
  console.log("Word " + slowka[j] + " has " + slowka[j].length + " characters(s)");
}



const oceny = [
  {
    wartosc: 2.0
  },
  {
    wartosc: 5.0
  },
  {
    wartosc: 3.5
  },
  {
    wartosc: 2.0
  },
];

let sumaOcen = 0;
for (let k = 0; k < oceny.length; k++) {
  sumaOcen += oceny[k].wartosc;
}
console.log(sumaOcen/oceny.length);
