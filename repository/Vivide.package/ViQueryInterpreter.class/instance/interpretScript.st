interpreting - private
interpretScript

	self assert: step isScript.
	
	step isPropertyExtraction
		ifTrue: [self interpretScriptExtraction]
		ifFalse: [self interpretScriptTransformation].