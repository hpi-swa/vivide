as yet unclassified
printOn: stream

	super printOn: stream.
	stream
		nextPut: $<;
		nextPutAll: self label asString;
		nextPut: $>.