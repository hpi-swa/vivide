interpreting - private
interpretScriptReference

	stack push: step.
	step := step
		referenceFor: self objects
		in: step organization.
	
	"Try lookup in current profile's organization."
	(step isNil and: [stack top organization ~~ (ViProfile active ifNotNil: #organization)])
		ifTrue: [
			step := stack top
				referenceFor: self objects
				in: (ViProfile active ifNotNil: #organization)].