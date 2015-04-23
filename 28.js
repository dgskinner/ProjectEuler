sumDiagonals = function (sideDimension) {
	var sum = 1;
	var counter = 1;
	for (var i = 1; i < sideDimension / 2; i++) {
		for (var j = 0; j < 4; j++) {
			counter += (2 * i);
			sum += counter;
		}
	}
	return sum;
}

console.log(sumDiagonals(1001)); // => 669171001