as yet unclassified
upToNextPropertiesAsync
	"Watch for asynchronous steps and manage evaluation in this case."

	| seenPropertySteps |
	properties := Dictionary new.
	seenPropertySteps := 0.
	
	[
		(step isNil
			or: [step isExecutedAsynchronously])
			or: [step isPropertyStep not and: [seenPropertySteps > 0]]
	] whileFalse: [
		step isPropertyStep
			ifTrue: [seenPropertySteps := seenPropertySteps + 1].
		self next].

	(step notNil and: [step isExecutedAsynchronously])
		ifTrue: [
			self prepareAsynchronousExecution.
			self clearObjectsAndProperties].