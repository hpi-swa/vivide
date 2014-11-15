interpreting
upToNextProperties
	
	| seenPropertySteps |
	properties := Dictionary new.
	seenPropertySteps := 0.
	
	[step isNil or: [step isPropertyStep not
		and: [seenPropertySteps > 0]]]
		whileFalse: [
			step isPropertyStep ifTrue: [
				seenPropertySteps := seenPropertySteps + 1].
			self next].