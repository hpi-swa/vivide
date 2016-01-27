as yet unclassified
unsubscribe
	
	self history ifNil: [^ self].

	self history disconnectSignal: #objectAdded: from: self.
	self history disconnectSignal: #objectRemoved: from: self.