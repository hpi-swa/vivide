printing
printOn: stream

	stream
		nextPutAll: (self nextLabel ifNil: ['']);
		nextPutAll: ' <';
		nextPutAll: (((self class name allButFirst: 7) "ViQuery prefix"
			allButLast: 4) "Step suffix" asLowercase);
		nextPutAll: '> -> ';
		nextPutAll: self definition printString.