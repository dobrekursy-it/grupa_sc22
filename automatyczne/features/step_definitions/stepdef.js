const assert = require('assert');
const { Given, When, Then, setDefaultTimeout } = require('@cucumber/cucumber');
const {Builder, By} = require('selenium-webdriver');
setDefaultTimeout(600 * 1000);
let driver = new Builder().forBrowser('chrome').build();

const znajdzKafelek = (rzad, kolumna) => {
  const numId = ["gorny", "srodkowy", "dolny"].indexOf(rzad) * 3 + ["lewy", "srodkowy", "prawy"].indexOf(kolumna)
  return By.id('s' + numId);
}

const znajdzLitereZnaku = (znak) => {
  if (znak == "kolkiem") {
    return "o";
  }
  return "x";
}

Given('uzytkownik uruchomil', function () {
  driver.get('https://jagusiak.github.io/xo/');
});


When('uzytkownik kilknal w {string} {string} kafalek', function (rzad, kolumna) {
  driver.findElement(znajdzKafelek(rzad, kolumna)).click();
});


Then('kafalek {string} {string} jest {string}', async function (rzad, kolumna, znak) {
  // Write code here that turns the phrase above into concrete actions
  const otrzymanyZnak = await driver.findElement(znajdzKafelek(rzad, kolumna)).getAttribute('data-sign');
  assert.strictEqual(znajdzLitereZnaku(znak), otrzymanyZnak);
});

Then('kolko wygralo', async function () {
  // Write code here that turns the phrase above into concrete actions
  const czyWidoczny = await driver.findElement(By.id('o-win')).isDisplayed()
  assert.strictEqual(true, czyWidoczny);
});
