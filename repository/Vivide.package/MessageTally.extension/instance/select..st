*vivide-artifacts-support
select: aBlock

	^ Array streamContents: [:stream |
		self do: [:aMessageTally | (aBlock value: aMessageTally) ifTrue: [stream nextPut: aMessageTally]]].