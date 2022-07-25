const assert = require('assert');
const { Given, When, Then, setDefaultTimeout } = require('@cucumber/cucumber');
const {Builder, By} = require('selenium-webdriver');
setDefaultTimeout(600 * 1000);

let driver = new Builder().forBrowser('chrome').build();

const nazwyKafelkow = [
  "lewy,górnego",
  "środkowy,górnego",
  "prawy,górnego",
  "lewy,środkowego",
  "środkowy,środkowego",
  "prawy,środkowego",
  "lewy,dolnego",
  "środkowy,dolnego",
  "prawy,dolnego",
];

// pobiera element kafelka z uzyciem selenium
const pobierzKafelek = (kolumna, rzad) => {
  let nazwaKafelka = kolumna + ',' + rzad;
  const numerKafelka = nazwyKafelkow.indexOf(nazwaKafelka);
  return driver.findElement(By.id("s" + numerKafelka));
}

const podajZnak = (pelnaNazwa) => pelnaNazwa == "kółko" ? "o" : "x"

Given("gracz uruchomił grę", () => {
  driver.get('https://jagusiak.github.io/xo/');
})

When("gracz klika w {string} kafelek z {string} rzędu", (kolumna, rzad) => {
  pobierzKafelek(kolumna, rzad).click();
})

// When('gracz klika w powtórz', async () => {
//   const element = await driver.findElement(By.className('link'));
//   await element.click();
// });

Then('wpisano {string} w {string} kafelek z {string} rzędu', async (oczekiwanyZnak, kolumna, rzad) => {
  let znak = await pobierzKafelek(kolumna, rzad).getAttribute('data-sign');
  assert.strictEqual(podajZnak(oczekiwanyZnak), znak);
})

Then('{string} wygrywa', async (oczekiwanyZnak) => {
  const element = await driver.findElement( By.id(podajZnak(oczekiwanyZnak) + "-win"));
  let czyWidac = await element.isDisplayed();
  assert.strictEqual(true, czyWidac);
})

Then('remis', async () => {
  const element = driver.findElement(By.id('d-win'));
  const isDisplayed = await element.isDisplayed();
  assert.strictEqual(true, isDisplayed);
})

// Then('gra jest pusta', async () => {
//   for (let i = 0; i < 9; i++) {
//     const znak = driver.findElement(By.id("s" + i)).getAttribute('data-sign');
//     assert.strictEqual("", znak);
//   }
// })
