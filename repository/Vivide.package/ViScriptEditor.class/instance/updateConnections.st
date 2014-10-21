as yet unclassified
updateConnections
	"Use all found steps and connect them."

	"otherSteps ifEmpty: [^ self]."
	otherSteps, {nil} overlappingPairsDo: [:step :step2 |
		step next: step2].