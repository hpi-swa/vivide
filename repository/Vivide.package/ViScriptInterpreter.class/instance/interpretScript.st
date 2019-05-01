interpreting - private
interpretScript

	self assert: step isScript.
	
	(step valueOfProperty: #hidden ifAbsent: [false])
		ifTrue: [^ step := nil].  

	"Keep track of the current input to make intermediate script notifiers work."
	self objectsCache at: step put: self objects copy.

	step isPropertyExtraction ifTrue: [
		self interpretPropertyExtraction.
		^ step := nil].
	
	step isReference ifTrue: [
		self interpretScriptReference.
		^ step := nil].
	
	step isObjectTransformation ifTrue: [
		self interpretObjectTransformation.
		^ step := nil].
	
	Error signal: 'Cannot interpret'.