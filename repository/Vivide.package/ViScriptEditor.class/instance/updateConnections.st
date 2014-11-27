as yet unclassified
updateConnections
	"Use all found steps and connect them."

	| somethingChanged |
	somethingChanged := false.
	otherSteps, {nil} overlappingPairsDo: [:step1 :step2 |
		somethingChanged := somethingChanged | (step1 next ~~ step2).
		step1 next: step2].
	
	somethingChanged ifTrue: [
		ViLoggingService trigger: {#message -> 'Script parts reordered.'}].