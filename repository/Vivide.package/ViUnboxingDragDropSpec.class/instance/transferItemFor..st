building
transferItemFor: someDictionaries

	^ (ViTransferMorph
		withPassenger: (self key
			ifNil: [someDictionaries]
			ifNotNil: [:k | someDictionaries collect: [:dictionary |
				dictionary isDictionary
					ifTrue: [dictionary at: k]
					ifFalse: [dictionary perform: k]]])
		from: self source)
			dragTransferType: self dragTransferType;
			flagSpecs: #(($e 'Evaluate' #evaluate)($s 'Script' #script))