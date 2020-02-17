interpreting
upToExtractionDo: aBlock
	"Interpret the next script steps until completing the next property extraction."
	
	| seenPropertySteps onceNil |
	self clearProperties.
	
	seenPropertySteps := 0.
	onceNil := false.
	
	[ (step isNil
		or: [step isPropertyExtraction not and: [seenPropertySteps > 0]])
		or: [step shouldAppendExtraction not and: [seenPropertySteps = 1]] ]
		whileFalse: [
			step isNil ifTrue: [
				onceNil ifTrue: [^ self].
				onceNil := true].
			step isPropertyExtraction ifTrue: [
				seenPropertySteps := seenPropertySteps + 1].
			
			"Do something with the next step and input objects."
			aBlock cull: self next cull: self objects cull: self.
			
			self doNext].