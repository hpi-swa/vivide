interpreting
upToNextProperties
	
	| seenPropertySteps onceNil |
	properties := Dictionary new.
	seenPropertySteps := 0.
	onceNil := false.
	
	[ (step isNil
		or: [step isPropertyStep not and: [seenPropertySteps > 0]])
		or: [step mergeConsecutiveExtractions not and: [seenPropertySteps = 1]] ]
		whileFalse: [
			step isNil ifTrue: [
				onceNil ifTrue: [^ self].
				onceNil := true].
			step isPropertyStep ifTrue: [
				seenPropertySteps := seenPropertySteps + 1].
			self next].