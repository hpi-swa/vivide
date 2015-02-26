as yet unclassified
collect: aBlock

	^ Array streamContents: [:stream |
		self doRecursively: [:aMessageTally | stream nextPut: (aBlock value: aMessageTally)]].