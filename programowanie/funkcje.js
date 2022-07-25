const znajdzMin = (tablica) => {
  let min = tablica[0];
  for (let i = 0; i < tablica.length; i++) {
    if (min > tablica[i]) {
      min = tablica[i];
    }
  }
  return min;
}


const znajdzMax = (tablica) => {
  let max = tablica[0];
  for (let i = 0; i < tablica.length; i++) {
    if (max < tablica[i]) {
      max = tablica[i];
    }
  }
  return max;
}

function losujTablice(dlugoscTablicy) {
  let wynik = [];
  while (dlugoscTablicy--) {
    wynik.push(Math.floor(Math.random()*100000000));
  }
  return wynik;
}

const liczby = [1, 3, -3 ,2, 0, 1 , 1];

console.log(znajdzMin(liczby), znajdzMax(liczby));


const inneLiczby = [2, 3, 4, 5, 6];

console.log(znajdzMin(inneLiczby), znajdzMax(inneLiczby));

const losoweLiczby = losujTablice(10000000);
console.log(losoweLiczby, znajdzMax(losoweLiczby));
