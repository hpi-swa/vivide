initialization
disconnectTransformMorph: aMorph

	self disconnectMorph: aMorph.
	aMorph disconnectSignal: #offsetChanged: from: self.