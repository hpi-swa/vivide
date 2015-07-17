accessing - convenience
objects: someObjects from: aPane

	self assert: self tupleSize > 0. "Must not be called otherwise."
	
	self tupleSize = 1
		ifTrue: [
			"If we have only one input use it directly."
			self objects: someObjects]
		ifFalse: [
			"If we have multiple inputs, defer my updates because those update inputs may update, too."
			self triggerDeferredObjects].