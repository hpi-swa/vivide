accessing - script
assureAllStepsConnected
	"Use all found steps and connect them. Used to delete steps by closing their editors."

	| somethingChanged oldFirst |
	"Transcript showln: self thisStep sourceCode."
	
	self allSteps
		detect: [:pivot | self allSteps allSatisfy: [:step | step next ~~ pivot]]
		ifFound: [:step | oldFirst := step]
		ifNone: [].
	
	"Support drops from other editors."
	self allSteps do: [:step |
		step adoptOrganization: self thisStep organization].
	
	"Assure connections of visible steps."
	somethingChanged := false.
	self allSteps overlappingPairsDo: [:step1 :step2 |
		somethingChanged := somethingChanged | (step1 next ~~ step2).
		step1 next: step2].
	
	somethingChanged ifTrue: [
		ViLoggingService trigger: {#message -> 'Script parts reordered.'}].

	"Support drops from other editors. Cannot work for default scripts."
	self allSteps do: [:step |
		step organization = self thisStep organization
			ifFalse: [Error signal: 'Could not adopt script!']].

	"If the first part is different, update all open panes to show the new first."
	oldFirst ~~ self allSteps first ifTrue: [
		ViPane allInstancesDo: [:pane | 
			pane currentQuery == oldFirst
				ifTrue: [pane currentQuery: self allSteps first from: self]]]