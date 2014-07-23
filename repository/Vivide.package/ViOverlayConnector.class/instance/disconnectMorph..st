initialization
disconnectMorph: aMorph

	aMorph disconnectSignal: #positionChanged: from: self.
	aMorph disconnectSignal: #extentChanged: from: self.