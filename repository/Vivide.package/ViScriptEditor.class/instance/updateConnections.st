updating
updateConnections
	"Use all found steps and connect them. Used to delete steps by closing their editors."

	| somethingChanged oldFirst |
	somethingChanged := false.
	
	otherSteps
		detect: [:pivot | otherSteps allSatisfy: [:step | step next ~~ pivot]]
		ifFound: [:step | oldFirst := step]
		ifNone: [].
	
	"Support drops from other editors."
	otherSteps do: [:step |
		step adoptOrganization: self object organization].
	
	self flag: #performance. "mt: Duplicate updates? This will happen for all open script editors!"
	otherSteps, {otherSteps first cycleStep ifNotNil: [:s | s next]}
		overlappingPairsDo: [:step1 :step2 |
			somethingChanged := somethingChanged | (step1 next ~~ step2).
			step1 next: step2].

	"Support drops from other editors."
	otherSteps do: [:step |
		step organization == self object organization
			ifFalse: [Error signal: 'Could not adopt script!']].

	somethingChanged ifTrue: [
		ViLoggingService trigger: {#message -> 'Script parts reordered.'}].

	oldFirst ~~ otherSteps first ifTrue: [
		ViPane allInstancesDo: [:pane | 
			pane currentQuery == oldFirst
				ifTrue: [pane currentQuery: otherSteps first]]]