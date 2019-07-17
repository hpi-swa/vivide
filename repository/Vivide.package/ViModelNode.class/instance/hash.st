comparing
hash

	^ ((self object hash
		bitXor: self firstStep hash)
		bitXor: (self hashStack: self referenceStackNoCopy)) hashMultiply