enumerating - local
stepsDoUnsafe: aBlock
	"Beware of queries with cycles!"
	
	| nextStep |
	nextStep := self.
	[nextStep notNil] whileTrue: [
		aBlock value: nextStep.
		nextStep := nextStep next].