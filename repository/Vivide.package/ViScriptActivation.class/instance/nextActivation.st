interpreting
nextActivation
	"Create a new script activation for steps other than thisStep."

	^ self next ifNotNil: [:step |
		step == self thisStep
			ifTrue: [self]
			ifFalse: [step activate]]