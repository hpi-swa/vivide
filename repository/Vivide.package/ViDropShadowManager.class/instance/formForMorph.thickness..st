accessing
formForMorph: aMorph thickness: anInteger

	(self dropShadows at: aMorph ifAbsent: [{0@0.nil}]) in: [:spec |
		^ aMorph bounds = spec first
			ifTrue: [spec second]
			ifFalse: [ | newShadow |
				newShadow := self formForBounds: aMorph bounds thickness: anInteger.
				self dropShadows at: aMorph put: {aMorph bounds. newShadow}.
				newShadow]].