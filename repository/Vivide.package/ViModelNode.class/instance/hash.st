comparing
hash

	^ ((self object hash
		bitXor: self firstStep hash)
		bitXor: (self hashStack: self referenceStack)) hashMultiply