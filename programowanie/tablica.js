let slowkoKot = 'cat';
let slowkoDot = 'dog';
let slowkoMaskonur = 'puffin';

console.log(slowkoKot, slowkoDot, slowkoMaskonur);

let slowka = ['cat', 'dog', 'puffin'];

console.log(slowka);

console.log(slowka.length);

slowka[2] = 'muffin';

console.log(slowka);

console.log(slowka[1]); // oczekujemy, ze to jest dog

slowka.push('knife');

console.log(slowka);

console.log(slowka.indexOf('cat'));
console.log(slowka.indexOf('dog'));
console.log(slowka.indexOf('zebra'));


console.log(typeof(slowka));
