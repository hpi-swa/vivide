interpreting - private
interpretScript

	self assert: step isScript.
	
	step isPropertyExtraction ifTrue: [
		self interpretScriptExtraction.
		^ step := step next].
	
	step isReferenceStep ifTrue: [
		^ self interpretScriptReference].
	
	self interpretScriptTransformation.
	step := step next.