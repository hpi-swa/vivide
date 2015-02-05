interpreting - private
interpretScript

	self assert: step isScript.
	
	(step valueOfProperty: #hidden ifAbsent: [false])
		ifTrue: [^ step := step next].  
	
	step isPropertyExtraction ifTrue: [
		self interpretScriptExtraction.
		^ step := step next].
	
	step isReferenceStep ifTrue: [
		^ self interpretScriptReference].
	
	self interpretScriptTransformation.
	step := step next.