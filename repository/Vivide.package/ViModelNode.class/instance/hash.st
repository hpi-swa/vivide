comparing
hash
	"Overwritten for safe enumeration. See #allNodesDo:..."

	^ ((self object hash
		bitXor: self firstStep hash)
		bitXor: (self hashStack: self referenceStackNoCopy)) hashMultiply