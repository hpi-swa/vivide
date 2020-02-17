accessing - convenience
nextStepAfterThisStep
	"Returns the next step after me."
	
	| found calls |
	found := false.
	calls := 0.

	self flag: #workaround. "mt: Since our recursion detection is kind of broken, use this workaround to support 10 repeated calls of the same reference in a script."
	self
		allStepsDo: [:step |
			found := found | (step == self).
			(found and: [step ~~ self]) ifTrue: [^ step]]
		ifRecursive: [:last :next |
			(calls := calls + 1) > 10].
		
	^ nil