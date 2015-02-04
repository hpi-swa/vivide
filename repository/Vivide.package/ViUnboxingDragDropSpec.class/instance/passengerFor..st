as yet unclassified
passengerFor: someDictionaries

	^ (self key
		ifNil: [someDictionaries]
		ifNotNil: [:k | someDictionaries collect: [:dictionary |
			dictionary isDictionary
				ifTrue: [dictionary at: k]
				ifFalse: [dictionary perform: k]]])