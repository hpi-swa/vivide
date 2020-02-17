testing
isScriptEndOfLevel
	^ self thisStep ifNil: [false] ifNotNil: [:step | step isEndOfLevel]