quadratiticCoefficients = function () {
	var mostConsecPrimes = 0;
	var bestPairProduct = null;
	for (var a = -999; a < 1000; a += 2) {
		for (var b = -999; b < 1000; b += 2) {
			var newConsecPrimes = consecutivePrimes(a, b);
			if (newConsecPrimes > mostConsecPrimes) {
				mostConsecPrimes = newConsecPrimes;
				bestPairProduct = a * b;
			}
		}
	}
	return bestPairProduct;
}

consecutivePrimes = function (a, b) {
	var n = 0;
	while (isPrime((n * n) + (a * n) + b)) {
		n++;
	}
	return n;
}

isPrime = function (num) {
	if (num < 2) {
		return false;
	}
	for (var i = 2; i < num / 2; i++) {
		if (num % i === 0) {
			return false;
		}
	}
	return true;
}

console.log(quadratiticCoefficients()); // => -59231