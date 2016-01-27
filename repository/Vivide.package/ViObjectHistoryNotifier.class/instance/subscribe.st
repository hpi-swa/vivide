as yet unclassified
subscribe

	self history ifNil: [^ self].
	
	self connect: self history signal: #objectAdded: toSelector: #notifyEvent:.
	self connect: self history signal: #objectRemoved: toSelector: #notifyEvent:.