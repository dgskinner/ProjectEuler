distinctPowers = function (min, max) {
	var distinct = {};
	for (i = min; i <= max; i++) {
		for (j = min; j <= max; j++) {
			var numString = Math.pow(i, j).toString();
			if (numString.length > 20) {
				numString = removeLastDecimalPlace(numString)
			}
			if (!distinct[numString]) {	
				distinct[numString] = true;
			}
		}
	}
	
	var size = 0;
	for (key in distinct) {
		if (distinct.hasOwnProperty(key)) {
			size ++;			
		}
	}
	
	return size;
}

removeLastDecimalPlace = function (sciNotationNumStr) {
	var numArray = sciNotationNumStr.split("");
	// numArray.splice(17, 1)
	numArray = numArray.slice(0, 10).concat(numArray.slice(-4));
	return numArray.join("");
}

distinctPowers(2, 100) // => 9183