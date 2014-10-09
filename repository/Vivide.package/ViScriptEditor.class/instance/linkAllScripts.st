actions
linkAllScripts

	| hasCycle lastSteps |
	self updateContext.
	
	(otherSteps allSatisfy: [:s | s next isNil or: [otherSteps includes: s next ]])
		ifFalse: [
			self warningSent: 'Some scripts are hidden. Open them first.'.
			^ self].
	
	lastSteps := (otherSteps
		ifEmpty: [self flag: #suspicious. "mt: Does this ever happen?"
			#()]
		ifNotEmpty: [:steps | {steps first}]) asOrderedCollection.
	hasCycle := false.

	otherSteps overlappingPairsDo: [:step1 :step2 |
		(lastSteps includes: step2)
			ifFalse: [lastSteps add: step2]
			ifTrue: [
				hasCycle ifTrue: [
					self warningSent: 'Too many repetitive steps detected! Only one cycle allowed.'.
					^ self].
				otherSteps last == step2 ifFalse: [
					self warningSent: 'Cycle should be at the end of a script!'.
					^ self].
				hasCycle := true].
		step1 next: step2].
	
	hasCycle ifFalse: [
		"Break inadvertent cycle."
		otherSteps ifNotEmpty: [:someSteps |
			someSteps last next: nil]].
	
	ViAnimatedImageMorph
		flyOutOn: self
		with: (hasCycle
			ifFalse: [UiSilkIcons folderLinkIcon]
			ifTrue: [UiFugueIcons arrowRetweetIcon]).