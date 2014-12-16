dragging
startDragWithHand: aHand
		
	aHand hasSubmorphs ifTrue: [^ self].
	self dragEnabled ifFalse: [^ self].
	
	self down: false; flatten.
	
	[aHand grabMorph:
		((ViTransferMorph withPassenger: self passenger from: self source)
			dragTransferType: self dragTransferType;
			flagSpecs: self dragFlagSpecs;
			setFlags: self dragFlags)]
		ensure: [Cursor normal show. aHand releaseMouseFocus: self].