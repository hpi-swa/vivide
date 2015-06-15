as yet unclassified
subscribe

	self connect: self history signal: #objectAdded: toSelector: #notifyEvent:.
	self connect: self history signal: #objectRemoved: toSelector: #notifyEvent:.