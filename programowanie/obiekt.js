const ocena = {
  wartosc: 4.5,
  osoba: 'Seweryn',
  przedmiot: 'angielski',
};


// const innaOcena = {};
// innaOcena['wartosc'] = 4.5;
// innaOcena['osoba'] = "Seweryn";

console.log(ocena['wartosc']);
console.log(ocena['osoba']);
console.log(ocena['przedmiot']);

console.log(ocena);


// poprawa oceny
console.log(ocena['wartosc']);
ocena['wartosc'] = 4.0;

console.log(ocena);


console.log(ocena.wartosc);
ocena.wartosc = 4.5;
console.log(ocena.wartosc);
