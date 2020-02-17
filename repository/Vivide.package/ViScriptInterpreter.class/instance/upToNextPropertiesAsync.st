interpreting - background
upToNextPropertiesAsync
	"Watch for asynchronous steps and manage evaluation in this case."

	| seenPropertyExtractions |
	self clearProperties.
	seenPropertyExtractions := 0.
	
	[
		(step isNil
			or: [step isExecutedAsynchronously])
			or: [step isPropertyExtraction not and: [seenPropertyExtractions > 0]]
	] whileFalse: [
		step isPropertyExtraction
			ifTrue: [seenPropertyExtractions := seenPropertyExtractions + 1].
		self doNext].

	(step notNil and: [step isExecutedAsynchronously])
		ifTrue: [
			self prepareAsynchronousExecution.
			self clearObjectsAndProperties].