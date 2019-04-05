interpreting - private
interpretScript

	self assert: step isScript.
	
	(step valueOfProperty: #hidden ifAbsent: [false])
		ifTrue: [^ step := step next].  

	"Keep track of the current input to make intermediate script notifiers work."
	self objectsCache at: step put: self objects copy.

	step isPropertyExtraction ifTrue: [
		self interpretPropertyExtraction.
		^ step := step next].
	
	step isReference ifTrue: [
		^ self interpretScriptReference].
	
	step isObjectTransformation ifTrue: [
		self interpretObjectTransformation.
		^ step := step next].
	
	Error signal: 'Cannot interpret'.