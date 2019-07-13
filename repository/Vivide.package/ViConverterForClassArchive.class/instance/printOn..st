printing
printOn: stream

	stream
		nextPutAll: 'Vivide <-obj--dict-> ';
		nextPutAll: self theClass name.