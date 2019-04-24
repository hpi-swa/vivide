enumerating
allPropertyStepsDo: aBlock ifNewSequence: anotherBlock

	| lastStep lastNonReferenceStep |
	lastStep := nil.
	lastNonReferenceStep := nil.
	self allStepsDo: [:step |
		step isPropertyExtraction ifTrue: [
			((step mergeConsecutiveExtractions not
				or: [lastNonReferenceStep isNil])
				or: [lastNonReferenceStep isPropertyExtraction not])
					ifTrue: [anotherBlock value].
			aBlock value: step].
		lastStep := step.
		step isReference ifFalse: [lastNonReferenceStep := step]].

	"Also consider default properties if needed."
	((lastStep isPropertyExtraction not
		and: [lastStep next isNil])
		and: [lastStep isReference not "Should point to some other property..."]) ifTrue: [
			#defaultProperties asScript ifNotNil: [:s | s
				allPropertyStepsDo: aBlock
				ifNewSequence: anotherBlock]].