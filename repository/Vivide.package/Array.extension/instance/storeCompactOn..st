*vivide
storeCompactOn: aStream

	| useLineBreaks |
	useLineBreaks := self size > 1 and: [self first class == Association].
	
	self shouldBePrintedAsLiteral
		ifTrue: [self storeOn: aStream]
		ifFalse: [
			"Use the form of a literal object array."
			aStream nextPut: ${.
			useLineBreaks ifTrue: [aStream cr].
			self
				do: [:element |
					element storeCompactOn: aStream]
				separatedBy: [
					aStream nextPut: $..
					useLineBreaks
						ifTrue: [aStream cr]
						ifFalse: [aStream space]].
			
			useLineBreaks ifTrue: [aStream cr].
			aStream nextPut: $}].