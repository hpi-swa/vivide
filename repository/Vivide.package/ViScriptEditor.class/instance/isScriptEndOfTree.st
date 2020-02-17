testing
isScriptEndOfTree
	^ self thisStep ifNil: [false] ifNotNil: [:step | step isEndOfTree]