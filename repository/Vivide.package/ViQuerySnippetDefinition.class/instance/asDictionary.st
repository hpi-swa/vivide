serialization
asDictionary

	^ super asDictionary in: [:dict |
		dict
			at: #block put: nil;
			at: #inputKind put: self inputKind;
			at: #receiverIsCollection put: self receiverIsCollection;
			yourself]