as yet unclassified
printOn: stream

	stream nextPut: $<.
	stream nextPutAll: self primarySource printString.
	stream nextPutAll: ', '.
	stream nextPutAll: self secondarySource printString.
	stream nextPut: $>.