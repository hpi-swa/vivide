interpreting
upToNextProperties
	
	| seenPropertySteps onceNil |
	self clearProperties.
	seenPropertySteps := 0.
	onceNil := false.
	
	[ (step isNil
		or: [step isPropertyExtraction not and: [seenPropertySteps > 0]])
		or: [step mergeConsecutiveExtractions not and: [seenPropertySteps = 1]] ]
		whileFalse: [
			step isNil ifTrue: [
				onceNil ifTrue: [^ self].
				onceNil := true].
			step isPropertyExtraction ifTrue: [
				seenPropertySteps := seenPropertySteps + 1].
			self doNext].