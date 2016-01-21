*vivide
storeCompactOn: aStream
	"copy of storeOn: with each occurrence of storeOn: replaced with storeCompactOn:"
	| arrow |
	"Store in the format (key->value)"
	aStream nextPut: $(.
	key storeCompactOn: aStream.
	"If the key is a binary selector and we don't use whitespace, we will stream (key, '->') asSymbol."
	arrow := (key isSymbol and: [key isBinary]) ifTrue: [' -> '] ifFalse: ['->'].
	aStream nextPutAll: arrow.
	value storeCompactOn: aStream.
	aStream nextPut: $)