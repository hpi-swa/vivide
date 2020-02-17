organization - steps
stepsWithLabel
	"Descriptive entry points."
	
	^ self steps values select: [:step | step label notNil]