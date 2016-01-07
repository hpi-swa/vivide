printing
printOn: stream

	stream
		nextPutAll: (self label ifNil: ['']);
		nextPutAll: ' <command> -> ';
		nextPutAll: self definition printString.