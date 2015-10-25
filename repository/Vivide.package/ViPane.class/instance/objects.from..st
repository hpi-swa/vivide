accessing - convenience
objects: someObjects from: aPane

	self assert: self tupleSize > 0. "Must not be called otherwise."
		
	(lastUpdateId == aPane lastUpdateId and: [forceUpdate == false])
		ifTrue: [^ self "abort update cycle"]
		ifFalse: [
			forceUpdate := false.
			lastUpdateId := aPane lastUpdateId].
	
	self tupleSize = 1
		ifTrue: [
			"If we have only one input use it directly."
			self objects: someObjects]
		ifFalse: [
			"If we have multiple inputs, defer my updates because those update inputs may update, too."
			self flag: #tradeoff. "mt: You cannot construct Fibonacci automaton with deferred update... but you need it to build a system browser."
			self triggerDeferredObjects].