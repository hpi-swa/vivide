testing
isGlobal

	^ self reference
		ifNil: [false]
		ifNotNil: [:step | step isGlobal]