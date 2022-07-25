// operator przypisania
let zmienna = 'house';

// +, -, *, /
console.log(1+2);
console.log('1' + 2);
console.log(1 + '2');
console.log('1' + '2');

console.log(1-2);
console.log('1' - 2);
console.log('2' - 2);
console.log('2' - '1');
console.log('ba' + ('a' - '1') + 'a');

console.log(1 * 2);
console.log('1' * 2);
console.log('a' * 2);
console.log(false*true);
console.log(true + true);

// operatory przypisania
// +=, -=. /=, *= ...
let licznik = 0;
licznik = licznik + 1
console.log(licznik);
licznik += 1 // <=> licznik = licznik + 1


licznik -= 1;
licznik *= 4;
licznik /= 2;

console.log(licznik);

licznik++; //licznik += 1
console.log(licznik);
console.log(licznik++);
console.log(licznik);
console.log(++licznik);


// operator logiczne
let ocena = 2.0;
console.log(ocena > 2);
console.log(ocena >= 2);
console.log(3<4);
console.log(3<=2.9999999);


console.log(1 != 2);
console.log(true != false);
console.log(true != 1);

console.log(true == 1);

console.log(!!(ocena = 3.0));

console.log(true == 1);
console.log('1' == 1);
console.log(true === 1);
console.log(true !== 1);


console.log(true && true);
console.log(true && false);


console.log(true || false);
console.log(false || false);
