updating
updateConnections
	"Use all found steps and connect them. Used to delete steps by closing their editors."

	| somethingChanged oldFirst |
	somethingChanged := false.
	
	otherSteps
		detect: [:pivot | otherSteps allSatisfy: [:step | step next ~~ pivot]]
		ifFound: [:step | oldFirst := step]
		ifNone: [].
	
	otherSteps, {otherSteps first cycleStep ifNotNil: [:s | s next]}
		overlappingPairsDo: [:step1 :step2 |
			somethingChanged := somethingChanged | (step1 next ~~ step2).
			step1 next: step2].

	somethingChanged ifTrue: [
		ViLoggingService trigger: {#message -> 'Script parts reordered.'}].

	oldFirst ~~ otherSteps first ifTrue: [
		ViPane allInstancesDo: [:pane | 
			pane currentQuery == oldFirst
				ifTrue: [pane currentQuery: otherSteps first]]]