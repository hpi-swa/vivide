accessing
formForMorph: aMorph thickness: anInteger

	| newShadow |
	(self dropShadows at: aMorph ifAbsent: [nil]) in: [:spec |
		spec ifNil: [
			newShadow := self formForBounds: aMorph bounds thickness: anInteger.
			self dropShadows at: aMorph put: {aMorph bounds. newShadow}.
			^ newShadow].
		
		aMorph bounds extent = spec first extent
			ifTrue: [^ spec second].
			
		aMorph bounds extent <= spec first extent
			ifTrue: [
				newShadow := self shrinkShadow: spec second delta: (aMorph bounds extent - spec first extent) .
				self dropShadows at: aMorph put: {aMorph bounds. newShadow}.
				^ newShadow].
		
		newShadow := self formForBounds: aMorph bounds thickness: anInteger.
		self dropShadows at: aMorph put: {aMorph bounds. newShadow}.
		^ newShadow].