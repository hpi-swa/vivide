interpreting - private
interpretScript

	self assert: step isScript.
	
	(step valueOfProperty: #hidden ifAbsent: [false])
		ifTrue: [^ step := step next].  

	"Keep track of the current input to make intermediate script notifiers work."
	self objectsCache at: step put: objects values concatenation.

	step isPropertyExtraction ifTrue: [
		self interpretScriptExtraction.
		^ step := step next].
	
	step isReferenceStep ifTrue: [
		^ self interpretScriptReference].
	
	self interpretScriptTransformation.
	step := step next.