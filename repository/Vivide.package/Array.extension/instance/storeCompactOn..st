*vivide
storeCompactOn: aStream

	self shouldBePrintedAsLiteral
		ifTrue: [self storeOn: aStream]
		ifFalse: [
			aStream nextPut: ${.
			self do: [:element |
				element storeOn: aStream.
				] separatedBy: [aStream nextPut: $.; space].
			aStream nextPut: $}].