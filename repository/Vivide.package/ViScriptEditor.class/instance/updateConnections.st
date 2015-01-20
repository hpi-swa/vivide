updating
updateConnections
	"Use all found steps and connect them."

	| somethingChanged wasCyclic |
	somethingChanged := false.
	otherSteps, {otherSteps last cycleStep}
		overlappingPairsDo: [:step1 :step2 |
			somethingChanged := somethingChanged | (step1 next ~~ step2).
			step1 next: step2].

	somethingChanged ifTrue: [
		ViLoggingService trigger: {#message -> 'Script parts reordered.'}].