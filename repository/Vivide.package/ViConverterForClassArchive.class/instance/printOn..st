printing
printOn: stream

	stream
		nextPutAll: self theClass name;
		nextPutAll: ' <-dict--obj-> Vivide '.