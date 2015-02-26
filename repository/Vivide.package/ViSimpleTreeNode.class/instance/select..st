as yet unclassified
select: aBlock

	^ Array streamContents: [:stream |
		self doRecursively: [:aMessageTally | (aBlock value: aMessageTally) ifTrue: [stream nextPut: aMessageTally]]].