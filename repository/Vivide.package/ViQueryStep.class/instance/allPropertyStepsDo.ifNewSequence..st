as yet unclassified
allPropertyStepsDo: aBlock ifNewSequence: anotherBlock

	| lastStep |
	lastStep := nil.
	self allStepsDo: [:step |
		step isPropertyStep ifTrue: [
			(lastStep isNil or: [lastStep isPropertyStep not])
				ifTrue: [anotherBlock value].
			aBlock value: step].
		lastStep := step].

	"Also consider default properties if needed."
	(lastStep isPropertyStep not and: [
		lastStep next isNil "or: [lastStep next isPropertyStep not] mt: references?"]) ifTrue: [
		ViQueryStep defaultProperties allPropertyStepsDo: aBlock ifNewSequence: anotherBlock].