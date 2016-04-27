as yet unclassified
allPropertyStepsDo: aBlock ifNewSequence: anotherBlock

	| lastStep lastNonReferenceStep |
	lastStep := nil.
	lastNonReferenceStep := nil.
	self allStepsDo: [:step |
		step isPropertyStep ifTrue: [
			((step mergeConsecutiveExtractions not
				or: [lastNonReferenceStep isNil])
				or: [lastNonReferenceStep isPropertyStep not])
					ifTrue: [anotherBlock value].
			aBlock value: step].
		lastStep := step.
		step isReferenceStep ifFalse: [lastNonReferenceStep := step]].

	"Also consider default properties if needed."
	((lastStep isPropertyStep not
		and: [lastStep next isNil])
		and: [lastStep isReferenceStep not "Should point to some other property..."]) ifTrue: [
			#defaultProperties asScript ifNotNil: [:s | s
				allPropertyStepsDo: aBlock
				ifNewSequence: anotherBlock]].