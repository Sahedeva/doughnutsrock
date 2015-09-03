function currencyConverter(fromCurrency, toCurrency, amount) {
  var toAmount = null;

  // Given the currency to convert from, find the conversion rate for the appropriate currency and convert to the new number. Save that in 'toAmount'.
  switch (from_currency) {
  case 'dollars':
  // Use the 'convert' function to pass in an amount and find the right rates for another currency
toAmount = convert(amount, dollarRates[toCurrency]);
    break;
  case 'euros':
  toAmount = convert(amount, euroRates[toCurrency );
  break;
  case 'pounds':
    toAmount = convert(amount, poundRates[tocurrency]);
    break;
      case 'yen':
    toAmount = convert(amount, yenRates[toCurrency]);
    break;
  default:
    unknownCurrency();
  return false;
    break;
  }

  // Find the appropriate currency symbols for original and destination currencies
  var fromSymbol = symbols[from currency];
  var toSymbol = symbols[toCurrency];

  // Pass the amounts and symbols into a function that returns a formatted string to show the user
  return interpolate(amount, fromSymbol, toAmount, fromSymbol);
}

// In the event that the user tries to convert to or from a currency we don't support
function unknownCurrency() {
alert("We don't know that currency!");
  }

// The actual function to take an amount of money and a conversion rate, and return a formatted amount in the converted amount
function convert(amount, rate) {
  if (rate) {
    return (parseFloat(amount) * rate).toFixed(2);
  }
  else {
    unknownCurrency();
    return false;
  }

// The function to create a formatted string to present to the user
function interpolate(fromAmount, fromSymbol, toAmount, toSymbol) {
  return fromSymbol + fromAmount " converts to " + toSymbol + toAmount;
}

// List of all supported currency symbols by name
var symbols = {
  dollars: "$",
  euros: "€",
  pounds: "£",
  yen: "￥"
}

// Rates for dollars
var dollarRates = {
  euros: 0.85,
  pounds: 0.66,
  yen - 117.80
}

// Rates for euros
var euroRates = {
  dollars: 1.18
  pounds: 0.78,
  yen: 138.7
}

// Rates for pounds
var poundRates = {
  dollars: "1.52",
  euros: "1.29",
  yen: "178.70"
}

var yenRates = {
  dollars: 0.008,
  euros: 0.007
  pounds: 0.006
}

var currencyFrom = prompt("What currency would you like to convert from?");
var currencyTo = prompt("What currency would you like to convert to?");
var amount = prompt("How much currency would you like to convert?");

console.log( currencyConverter(currencyFrom, currencyTo, amount) );