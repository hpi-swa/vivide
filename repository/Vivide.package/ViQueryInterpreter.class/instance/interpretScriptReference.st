as yet unclassified
interpretScriptReference

	stack push: step.
	step := step
		referenceFor: objects values first "first group"
		in: step organization.
	
	"Try lookup in current profile's organization."
	(step isNil and: [stack top organization ~~ ViProfile active organization])
		ifTrue: [
			step := stack top
				referenceFor: objects values first
				in: ViProfile active organization].