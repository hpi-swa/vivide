as yet unclassified
toggleContextStackIndex: anInteger 
	"If anInteger is the same as the index of the selected context, deselect it. 
	Otherwise, the context whose index is anInteger becomes the selected 
	context."

	self contextStackIndex: 
		(contextStackIndex = anInteger
			ifTrue: [0]
			ifFalse: [anInteger])
		oldContextWas:
		(contextStackIndex = 0
			ifTrue: [nil]
			ifFalse: [exception stack at: contextStackIndex])