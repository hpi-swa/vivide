accessing
default
	"Use the global variable if the dynamic scope was not set."

	^ ActiveVivide ifNotNil: [:vivide |
		vivide world == ActiveWorld
			ifTrue: [vivide]
			ifFalse: [nil]]