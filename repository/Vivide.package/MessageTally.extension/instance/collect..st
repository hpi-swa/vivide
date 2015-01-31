*vivide-artifacts-support
collect: aBlock

	^ Array streamContents: [:stream |
		self do: [:aMessageTally | stream nextPut: (aBlock value: aMessageTally)]].