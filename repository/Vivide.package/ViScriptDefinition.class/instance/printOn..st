printing
printOn: stream

	stream
		nextPutAll: (self sourceCode withoutLineEndingsTruncatedTo: 100);
		nextPutAll: ' <';
		nextPutAll: self id;
		nextPut: $>.